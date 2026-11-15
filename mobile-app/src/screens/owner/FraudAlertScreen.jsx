import { useState, useEffect } from 'react';
import { View, Text, FlatList, StyleSheet, TouchableOpacity, Alert } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import apiClient from '../../services/apiClient';
import VarianceBadge from '../../components/VarianceBadge';

export default function FraudAlertScreen() {
  const [alerts, setAlerts] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadAlerts();
  }, []);

  async function loadAlerts() {
    setLoading(true);
    try {
      const { data } = await apiClient.get('/fraud/alerts?status=open');
      setAlerts(data.data);
    } catch (err) {
      Alert.alert('Error', 'Failed to load fraud alerts');
    } finally {
      setLoading(false);
    }
  }

  async function handleReview(id) {
    await apiClient.patch(`/fraud/alerts/${id}/review`);
    loadAlerts();
  }

  async function handleDismiss(id) {
    await apiClient.patch(`/fraud/alerts/${id}/dismiss`);
    loadAlerts();
  }

  return (
    <SafeAreaView style={styles.safeArea} edges={['top']}>
      <View style={styles.headerBar}>
        <View>
          <Text style={styles.headerTitle}>Fraud Alerts</Text>
          <Text style={styles.headerSubtitle}>
            {alerts.length} open alert{alerts.length !== 1 ? 's' : ''}
          </Text>
        </View>
        {alerts.length > 0 && (
          <View style={styles.countPill}>
            <Text style={styles.countPillText}>{alerts.length}</Text>
          </View>
        )}
      </View>

      <FlatList
        data={alerts}
        keyExtractor={(item) => item.id}
        refreshing={loading}
        onRefresh={loadAlerts}
        contentContainerStyle={{ padding: 16, paddingBottom: 32 }}
        ListEmptyComponent={
          !loading && (
            <View style={styles.emptyCard}>
              <Text style={styles.emptyIcon}>✓</Text>
              <Text style={styles.emptyText}>No open fraud alerts. All clear!</Text>
            </View>
          )
        }
        renderItem={({ item }) => (
          <View style={styles.card}>
            <View style={styles.cardHeader}>
              <Text style={styles.cardType}>{item.alert_type.replace('_', ' ').toUpperCase()}</Text>
              <VarianceBadge variancePercent={item.risk_score} limitPercent={0} label={`Risk: ${item.risk_score}`} />
            </View>
            <Text style={styles.cardDetails}>{item.details}</Text>
            <View style={styles.buttonRow}>
              <TouchableOpacity style={styles.reviewButton} onPress={() => handleReview(item.id)} activeOpacity={0.85}>
                <Text style={styles.reviewText}>Review</Text>
              </TouchableOpacity>
              <TouchableOpacity style={styles.dismissButton} onPress={() => handleDismiss(item.id)} activeOpacity={0.85}>
                <Text style={styles.dismissText}>Dismiss</Text>
              </TouchableOpacity>
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
    backgroundColor: '#1e293b',
  },
  headerTitle: { color: '#fff', fontSize: 19, fontWeight: 'bold' },
  headerSubtitle: { color: '#94a3b8', fontSize: 12, marginTop: 1 },
  countPill: { backgroundColor: '#fee2e2', paddingHorizontal: 10, paddingVertical: 4, borderRadius: 12 },
  countPillText: { fontSize: 12, fontWeight: '700', color: '#dc2626' },
  card: {
    backgroundColor: '#fff',
    borderRadius: 14,
    padding: 14,
    marginBottom: 12,
    borderLeftWidth: 4,
    borderLeftColor: '#dc2626',
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.05,
    shadowRadius: 8,
    elevation: 2,
  },
  cardHeader: { flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center', marginBottom: 8 },
  cardType: { fontSize: 12, fontWeight: 'bold', color: '#64748b', letterSpacing: 0.3 },
  cardDetails: { fontSize: 13, color: '#334155', marginBottom: 12, lineHeight: 18 },
  buttonRow: { flexDirection: 'row', gap: 8 },
  reviewButton: { flex: 1, backgroundColor: '#2563eb', borderRadius: 10, paddingVertical: 11, alignItems: 'center' },
  reviewText: { color: '#fff', fontWeight: '700', fontSize: 13 },
  dismissButton: { flex: 1, backgroundColor: '#e2e8f0', borderRadius: 10, paddingVertical: 11, alignItems: 'center' },
  dismissText: { color: '#475569', fontWeight: '700', fontSize: 13 },
  emptyCard: { alignItems: 'center', backgroundColor: '#fff', borderRadius: 14, paddingVertical: 40, marginTop: 8 },
  emptyIcon: { fontSize: 28, color: '#16a34a', marginBottom: 6 },
  emptyText: { textAlign: 'center', color: '#94a3b8', fontSize: 13 },
});
