import { useState, useEffect } from 'react';
import { View, Text, FlatList, StyleSheet, Alert } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import apiClient from '../../services/apiClient';

const MONTH_SHORT = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

function formatRs(n) {
  const rounded = Math.round(Number(n || 0));
  return `Rs. ${String(rounded).replace(/\B(?=(\d{3})+(?!\d))/g, ',')}`;
}

function formatDay(text) {
  if (!text) return '';
  const [y, m, d] = String(text).slice(0, 10).split('-').map(Number);
  return `${d} ${MONTH_SHORT[m - 1] || ''} ${y}`;
}

export default function MySalaryScreen() {
  const [slips, setSlips] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadSlips();
  }, []);

  async function loadSlips() {
    setLoading(true);
    try {
      const { data } = await apiClient.get('/staff/payroll/my-slips');
      setSlips(data.data);
    } catch (err) {
      Alert.alert('Error', err.response?.data?.message || 'Failed to load your salary slips');
    } finally {
      setLoading(false);
    }
  }

  return (
    <SafeAreaView style={styles.safeArea} edges={['top']}>
      <View style={styles.headerBar}>
        <View>
          <Text style={styles.headerTitle}>My Salary</Text>
          <Text style={styles.headerSubtitle}>Slips prepared by the owner</Text>
        </View>
      </View>

      <FlatList
        data={slips}
        keyExtractor={(item) => String(item.id)}
        refreshing={loading}
        onRefresh={loadSlips}
        contentContainerStyle={{ padding: 16, paddingBottom: 32 }}
        ListEmptyComponent={
          !loading && (
            <View style={styles.emptyCard}>
              <Text style={styles.emptyText}>No salary slips yet. Pull down to refresh.</Text>
            </View>
          )
        }
        renderItem={({ item }) => (
          <View style={styles.card}>
            <Text style={styles.period}>
              {formatDay(item.period_from_text)} – {formatDay(item.period_to_text)}
            </Text>
            <Text style={styles.net}>{formatRs(item.net_pay)}</Text>
            <Text style={styles.netLabel}>Net pay</Text>

            <View style={styles.grid}>
              <View style={styles.cell}>
                <Text style={styles.label}>Days worked</Text>
                <Text style={styles.value}>{item.days_worked}</Text>
              </View>
              <View style={styles.cell}>
                <Text style={styles.label}>Hours</Text>
                <Text style={styles.value}>{Number(item.total_hours).toFixed(1)}</Text>
              </View>
              <View style={styles.cell}>
                <Text style={styles.label}>Gross pay</Text>
                <Text style={styles.value}>{formatRs(item.gross_pay)}</Text>
              </View>
              <View style={styles.cell}>
                <Text style={styles.label}>Deductions</Text>
                <Text style={[styles.value, Number(item.deductions) > 0 && { color: '#dc2626' }]}>
                  {formatRs(item.deductions)}
                </Text>
              </View>
            </View>
          </View>
        )}
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
  card: {
    backgroundColor: '#fff',
    borderRadius: 16,
    padding: 16,
    marginBottom: 12,
    borderLeftWidth: 4,
    borderLeftColor: '#f59e0b',
  },
  period: { fontSize: 12, color: '#64748b', fontWeight: '600' },
  net: { fontSize: 26, fontWeight: 'bold', color: '#1e293b', marginTop: 6 },
  netLabel: { fontSize: 11, color: '#94a3b8', marginBottom: 12 },
  grid: { flexDirection: 'row', flexWrap: 'wrap' },
  cell: { width: '50%', marginBottom: 8 },
  label: { fontSize: 11, color: '#94a3b8' },
  value: { fontSize: 14, fontWeight: '700', color: '#1e293b' },
  emptyCard: { alignItems: 'center', backgroundColor: '#fff', borderRadius: 14, paddingVertical: 40, marginTop: 8 },
  emptyText: { textAlign: 'center', color: '#94a3b8', fontSize: 13 },
});