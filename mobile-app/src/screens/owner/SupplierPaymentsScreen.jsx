import { useState, useEffect } from 'react';
import { View, Text, FlatList, StyleSheet, TouchableOpacity, Alert } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import apiClient from '../../services/apiClient';

function money(n) {
  return Number(n || 0).toLocaleString();
}

function dueText(days) {
  const d = Number(days);
  if (d > 0) return `${d} day${d !== 1 ? 's' : ''} overdue`;
  if (d === 0) return 'due today';
  return `due in ${-d} day${-d !== 1 ? 's' : ''}`;
}

export default function SupplierPaymentsScreen() {
  const [view, setView] = useState('payments');
  const [outstanding, setOutstanding] = useState({ totalRemaining: 0, totalOverdue: 0, count: 0, items: [] });
  const [scorecards, setScorecards] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadData();
  }, []);

  async function loadData() {
    setLoading(true);
    try {
      const [outRes, scoreRes] = await Promise.all([
        apiClient.get('/procurement/payments/outstanding'),
        apiClient.get('/procurement/suppliers/scorecards'),
      ]);
      setOutstanding(outRes.data.data);
      setScorecards(scoreRes.data.data);
    } catch (err) {
      Alert.alert('Error', 'Failed to load supplier data');
    } finally {
      setLoading(false);
    }
  }

  const listData = view === 'payments' ? outstanding.items : scorecards;

  return (
    <SafeAreaView style={styles.safeArea} edges={['top']}>
      <View style={styles.headerBar}>
        <View>
          <Text style={styles.headerTitle}>Supplier Payments</Text>
          <Text style={styles.headerSubtitle}>
            {outstanding.count} unpaid invoice{outstanding.count !== 1 ? 's' : ''}
          </Text>
        </View>
      </View>

      <View style={styles.summaryRow}>
        <View style={styles.summaryCard}>
          <Text style={styles.summaryLabel}>Outstanding</Text>
          <Text style={styles.summaryValue}>Rs. {money(outstanding.totalRemaining)}</Text>
        </View>
        <View style={styles.summaryCard}>
          <Text style={styles.summaryLabel}>Overdue</Text>
          <Text style={[styles.summaryValue, { color: '#dc2626' }]}>Rs. {money(outstanding.totalOverdue)}</Text>
        </View>
      </View>

      <View style={styles.toggleRow}>
        <TouchableOpacity
          style={[styles.toggleBtn, view === 'payments' && styles.toggleBtnActive]}
          onPress={() => setView('payments')}
        >
          <Text style={[styles.toggleText, view === 'payments' && styles.toggleTextActive]}>Payments</Text>
        </TouchableOpacity>
        <TouchableOpacity
          style={[styles.toggleBtn, view === 'scores' && styles.toggleBtnActive]}
          onPress={() => setView('scores')}
        >
          <Text style={[styles.toggleText, view === 'scores' && styles.toggleTextActive]}>Scorecards</Text>
        </TouchableOpacity>
      </View>

      <FlatList
        data={listData}
        keyExtractor={(item) => String(item.id)}
        refreshing={loading}
        onRefresh={loadData}
        contentContainerStyle={{ padding: 16, paddingBottom: 32 }}
        ListEmptyComponent={
          !loading && (
            <View style={styles.emptyCard}>
              <Text style={styles.emptyIcon}>✓</Text>
              <Text style={styles.emptyText}>
                {view === 'payments' ? 'No outstanding supplier payments.' : 'No suppliers yet.'}
              </Text>
            </View>
          )
        }
        renderItem={({ item }) =>
          view === 'payments' ? (
            <View style={[styles.card, { borderLeftColor: item.bucket === 'overdue' ? '#dc2626' : '#2563eb' }]}>
              <View style={{ flex: 1 }}>
                <Text style={styles.cardTitle}>{item.supplier_name}</Text>
                <Text style={styles.cardSub}>
                  Invoice {item.invoice_number} · {dueText(item.days_overdue)}
                </Text>
                {item.validation_status === 'mismatch' && (
                  <Text style={styles.warnText}>⚠️ Delivery mismatch, check before paying</Text>
                )}
              </View>
              <Text style={styles.amount}>Rs. {money(item.remaining)}</Text>
            </View>
          ) : (
            <View style={styles.card}>
              <View style={{ flex: 1 }}>
                <Text style={styles.cardTitle}>{item.name}</Text>
                <Text style={styles.cardSub}>
                  Accuracy {item.scorecard_accuracy} · Price {item.scorecard_price}
                </Text>
                <Text style={styles.cardSub}>
                  {item.total_orders} order{Number(item.total_orders) !== 1 ? 's' : ''} · {item.discrepancy_orders}{' '}
                  with discrepancies
                </Text>
              </View>
              <View style={styles.scorePill}>
                <Text style={styles.scorePillText}>{item.overall_score}</Text>
              </View>
            </View>
          )
        }
      />
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  safeArea: { flex: 1, backgroundColor: '#1e293b' },
  headerBar: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 16,
    paddingVertical: 14,
  },
  headerTitle: { color: '#fff', fontSize: 19, fontWeight: 'bold' },
  headerSubtitle: { color: '#94a3b8', fontSize: 12, marginTop: 1 },
  summaryRow: { flexDirection: 'row', gap: 10, paddingHorizontal: 16 },
  summaryCard: { flex: 1, backgroundColor: '#fff', borderRadius: 14, padding: 12 },
  summaryLabel: { fontSize: 11, color: '#64748b', textTransform: 'uppercase' },
  summaryValue: { fontSize: 17, fontWeight: '800', color: '#1e293b', marginTop: 4 },
  toggleRow: {
    flexDirection: 'row',
    backgroundColor: '#334155',
    borderRadius: 12,
    padding: 3,
    marginHorizontal: 16,
    marginTop: 14,
  },
  toggleBtn: { flex: 1, paddingVertical: 8, borderRadius: 10, alignItems: 'center' },
  toggleBtnActive: { backgroundColor: '#f59e0b' },
  toggleText: { color: '#cbd5e1', fontWeight: '600', fontSize: 13 },
  toggleTextActive: { color: '#1e293b' },
  card: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    backgroundColor: '#fff',
    borderRadius: 14,
    padding: 12,
    marginBottom: 10,
    borderLeftWidth: 4,
    borderLeftColor: '#2563eb',
    gap: 10,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.05,
    shadowRadius: 8,
    elevation: 2,
  },
  cardTitle: { fontSize: 15, fontWeight: '700', color: '#1e293b' },
  cardSub: { fontSize: 12, color: '#64748b', marginTop: 2 },
  warnText: { fontSize: 12, color: '#dc2626', marginTop: 4, fontWeight: '600' },
  amount: { fontSize: 15, fontWeight: '800', color: '#1e293b' },
  scorePill: { backgroundColor: '#dbeafe', borderRadius: 12, paddingHorizontal: 12, paddingVertical: 6 },
  scorePillText: { color: '#2563eb', fontWeight: '800', fontSize: 14 },
  emptyCard: { alignItems: 'center', backgroundColor: '#fff', borderRadius: 14, paddingVertical: 40, marginTop: 8 },
  emptyIcon: { fontSize: 28, color: '#16a34a', marginBottom: 6 },
  emptyText: { textAlign: 'center', color: '#94a3b8', fontSize: 13 },
});