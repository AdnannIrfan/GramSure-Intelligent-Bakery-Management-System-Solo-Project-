import { useState, useEffect, useCallback, useContext } from 'react';
import { View, Text, ScrollView, StyleSheet, RefreshControl, TouchableOpacity, Alert } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import apiClient from '../../services/apiClient';
import { AuthContext } from '../../context/AuthContext';

export default function DashboardScreen({ navigation }) {
  const [pnl, setPnl] = useState(null);
  const [alerts, setAlerts] = useState([]);
  const [lowStock, setLowStock] = useState([]);
  const [refreshing, setRefreshing] = useState(false);

  const { logout, user } = useContext(AuthContext);

  useEffect(() => {
    loadData();
  }, []);

  const loadData = useCallback(async () => {
    try {
      const [pnlRes, alertsRes, stockRes] = await Promise.all([
        apiClient.get('/financial-dashboard/pnl/today'),
        apiClient.get('/fraud/alerts?status=open'),
        apiClient.get('/stock/low'),
      ]);
      setPnl(pnlRes.data.data);
      setAlerts(alertsRes.data.data);
      setLowStock(stockRes.data.data);
    } catch (err) {
      console.error('Failed to load dashboard:', err);
    }
  }, []);

  async function onRefresh() {
    setRefreshing(true);
    await loadData();
    setRefreshing(false);
  }

  function handleLogoutPress() {
    Alert.alert(
      'Log Out',
      `Are you sure you want to log out, ${user?.name || ''}?`,
      [
        { text: 'Cancel', style: 'cancel' },
        { text: 'Log Out', style: 'destructive', onPress: logout },
      ]
    );
  }

  const pendingCount = alerts.length + lowStock.length;
  const today = new Date().toLocaleDateString('en-US', { weekday: 'long', month: 'long', day: 'numeric' });

  return (
    <SafeAreaView style={styles.safeArea} edges={['top']}>
      <View style={styles.headerBar}>
        <View>
          <Text style={styles.headerGreeting}>Welcome back{user?.name ? `, ${user.name.split(' ')[0]}` : ''}</Text>
          <Text style={styles.headerTitle}>Owner Dashboard</Text>
        </View>
        <TouchableOpacity onPress={handleLogoutPress} style={styles.logoutButton} activeOpacity={0.8}>
          <Text style={styles.logoutText}>Log Out</Text>
        </TouchableOpacity>
      </View>

      <ScrollView
        style={styles.container}
        contentContainerStyle={{ padding: 16, paddingBottom: 32 }}
        refreshControl={<RefreshControl refreshing={refreshing} onRefresh={onRefresh} tintColor="#1e293b" />}
      >
        <Text style={styles.dateText}>{today}</Text>

        <View style={styles.cardsGrid}>
          <View style={[styles.card, styles.cardGood]}>
            <View style={styles.cardIconRow}>
              <Text style={styles.cardLabel}>NET PROFIT</Text>
              <Text style={styles.cardEmoji}>💰</Text>
            </View>
            <Text style={styles.cardValue}>Rs. {pnl ? pnl.netProfit.toFixed(0) : '—'}</Text>
          </View>
          <View style={[styles.card, alerts.length > 0 ? styles.cardCritical : styles.cardGood]}>
            <View style={styles.cardIconRow}>
              <Text style={styles.cardLabel}>FRAUD FLAGS</Text>
              <Text style={styles.cardEmoji}>{alerts.length > 0 ? '🚨' : '✅'}</Text>
            </View>
            <Text style={styles.cardValue}>{alerts.length} Active</Text>
          </View>
        </View>

        <View style={styles.sectionHeaderRow}>
          <Text style={styles.sectionTitle}>Pending Actions</Text>
          {pendingCount > 0 && (
            <View style={styles.countPill}>
              <Text style={styles.countPillText}>{pendingCount}</Text>
            </View>
          )}
        </View>

        {alerts.map((a) => (
          <TouchableOpacity
            key={a.id}
            style={styles.actionRow}
            onPress={() => navigation.navigate('FraudAlerts')}
            activeOpacity={0.8}
          >
            <View style={styles.actionIconWrap}>
              <Text style={styles.actionIcon}>🚨</Text>
            </View>
            <Text style={styles.actionLabel} numberOfLines={2}>{a.details}</Text>
            <View style={styles.ctaPill}>
              <Text style={styles.actionCta}>REVIEW</Text>
            </View>
          </TouchableOpacity>
        ))}
        {lowStock.map((s) => (
          <TouchableOpacity
            key={s.id}
            style={[styles.actionRow, styles.actionRowWarn]}
            onPress={() => navigation.navigate('StockOrder')}
            activeOpacity={0.8}
          >
            <View style={[styles.actionIconWrap, styles.actionIconWrapWarn]}>
              <Text style={styles.actionIcon}>📦</Text>
            </View>
            <Text style={styles.actionLabel} numberOfLines={2}>
              {s.material_name} — {s.quantity}{s.unit} left
            </Text>
            <View style={[styles.ctaPill, styles.ctaPillWarn]}>
              <Text style={[styles.actionCta, styles.actionCtaWarn]}>ORDER</Text>
            </View>
          </TouchableOpacity>
        ))}
        {pendingCount === 0 && (
          <View style={styles.emptyCard}>
            <Text style={styles.emptyIcon}>✓</Text>
            <Text style={styles.emptyText}>No pending actions. All clear!</Text>
          </View>
        )}
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  safeArea: { flex: 1, backgroundColor: '#1e293b' },
  container: { flex: 1, backgroundColor: '#f8fafc' },
  headerBar: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 16,
    paddingVertical: 14,
    backgroundColor: '#1e293b',
  },
  headerGreeting: { color: '#94a3b8', fontSize: 12 },
  headerTitle: { color: '#fff', fontSize: 19, fontWeight: 'bold', marginTop: 1 },
  logoutButton: { backgroundColor: 'rgba(254,226,226,0.95)', paddingHorizontal: 14, paddingVertical: 7, borderRadius: 10 },
  logoutText: { color: '#dc2626', fontWeight: '700', fontSize: 12 },
  dateText: { color: '#94a3b8', fontSize: 13, marginBottom: 14, fontWeight: '500' },
  cardsGrid: { flexDirection: 'row', gap: 12, marginBottom: 24 },
  card: {
    flex: 1,
    borderRadius: 16,
    padding: 14,
    backgroundColor: '#fff',
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.05,
    shadowRadius: 8,
    elevation: 2,
  },
  cardGood: { backgroundColor: '#fff' },
  cardCritical: { backgroundColor: '#fff' },
  cardIconRow: { flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center', marginBottom: 8 },
  cardEmoji: { fontSize: 16 },
  cardLabel: { fontSize: 11, fontWeight: '700', color: '#94a3b8', letterSpacing: 0.3 },
  cardValue: { fontSize: 19, fontWeight: 'bold', color: '#1e293b' },
  sectionHeaderRow: { flexDirection: 'row', alignItems: 'center', gap: 8, marginBottom: 10 },
  sectionTitle: { fontSize: 15, fontWeight: '700', color: '#1e293b' },
  countPill: { backgroundColor: '#fef3c7', paddingHorizontal: 8, paddingVertical: 2, borderRadius: 10 },
  countPillText: { fontSize: 11, fontWeight: '700', color: '#92400e' },
  actionRow: {
    flexDirection: 'row',
    alignItems: 'center',
    gap: 10,
    backgroundColor: '#fff',
    borderRadius: 14,
    padding: 12,
    marginBottom: 8,
    borderLeftWidth: 4,
    borderLeftColor: '#dc2626',
  },
  actionRowWarn: { borderLeftColor: '#f97316' },
  actionIconWrap: {
    width: 34, height: 34, borderRadius: 10, backgroundColor: '#fee2e2',
    alignItems: 'center', justifyContent: 'center',
  },
  actionIconWrapWarn: { backgroundColor: '#ffedd5' },
  actionIcon: { fontSize: 15 },
  actionLabel: { fontSize: 13, color: '#1e293b', flex: 1 },
  ctaPill: { backgroundColor: '#eff6ff', paddingHorizontal: 10, paddingVertical: 5, borderRadius: 8 },
  ctaPillWarn: { backgroundColor: '#fff7ed' },
  actionCta: { fontSize: 11, fontWeight: '700', color: '#2563eb' },
  actionCtaWarn: { color: '#ea580c' },
  emptyCard: { alignItems: 'center', backgroundColor: '#fff', borderRadius: 14, paddingVertical: 32, marginTop: 8 },
  emptyIcon: { fontSize: 28, color: '#16a34a', marginBottom: 6 },
  emptyText: { textAlign: 'center', color: '#94a3b8', fontSize: 13 },
});