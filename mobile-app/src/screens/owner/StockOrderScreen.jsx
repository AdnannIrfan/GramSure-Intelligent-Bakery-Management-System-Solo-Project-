import { useState, useEffect } from 'react';
import { View, Text, FlatList, StyleSheet, TouchableOpacity, Alert } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import apiClient from '../../services/apiClient';

export default function StockOrderScreen() {
  const [lowStock, setLowStock] = useState([]);
  const [suppliers, setSuppliers] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadData();
  }, []);

  async function loadData() {
    setLoading(true);
    try {
      const [stockRes, suppliersRes] = await Promise.all([
        apiClient.get('/stock/low'),
        apiClient.get('/procurement/suppliers'),
      ]);
      setLowStock(stockRes.data.data);
      setSuppliers(suppliersRes.data.data);
    } catch (err) {
      Alert.alert('Error', 'Failed to load stock data');
    } finally {
      setLoading(false);
    }
  }

  async function handleQuickOrder(item) {
    if (suppliers.length === 0) {
      Alert.alert('No suppliers', 'Please add a supplier first from the web dashboard.');
      return;
    }
    try {
      const reorderQty = item.low_stock_threshold * 3; // simple reorder heuristic
      await apiClient.post('/procurement/purchase-orders', {
        supplierId: suppliers[0].id,
        items: [{ materialName: item.material_name, quantity: reorderQty, unitPrice: 0, unit: item.unit }],
      });
      Alert.alert('✅ Order Created', `Purchase order created for ${item.material_name}`);
      loadData();
    } catch (err) {
      Alert.alert('❌ Failed', err.response?.data?.message || 'Please try again');
    }
  }

  return (
    <SafeAreaView style={styles.safeArea} edges={['top']}>
      <View style={styles.headerBar}>
        <View>
          <Text style={styles.headerTitle}>Stock Ordering</Text>
          <Text style={styles.headerSubtitle}>
            {lowStock.length} item{lowStock.length !== 1 ? 's' : ''} need attention
          </Text>
        </View>
        {lowStock.length > 0 && (
          <View style={styles.countPill}>
            <Text style={styles.countPillText}>{lowStock.length}</Text>
          </View>
        )}
      </View>

      <FlatList
        data={lowStock}
        keyExtractor={(item) => item.id}
        refreshing={loading}
        onRefresh={loadData}
        contentContainerStyle={{ padding: 16, paddingBottom: 32 }}
        ListEmptyComponent={
          !loading && (
            <View style={styles.emptyCard}>
              <Text style={styles.emptyIcon}>✓</Text>
              <Text style={styles.emptyText}>No low-stock items. Inventory is healthy!</Text>
            </View>
          )
        }
        renderItem={({ item }) => (
          <View style={styles.card}>
            <View style={styles.cardLeft}>
              <View style={styles.iconWrap}>
                <Text style={styles.icon}>📦</Text>
              </View>
              <View style={{ flex: 1 }}>
                <Text style={styles.materialName}>{item.material_name}</Text>
                <Text style={styles.stockLevel}>{item.quantity}{item.unit} remaining</Text>
              </View>
            </View>
            <TouchableOpacity style={styles.orderButton} onPress={() => handleQuickOrder(item)} activeOpacity={0.85}>
              <Text style={styles.orderText}>ORDER</Text>
            </TouchableOpacity>
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
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    backgroundColor: '#fff',
    borderRadius: 14,
    padding: 12,
    marginBottom: 10,
    borderLeftWidth: 4,
    borderLeftColor: '#dc2626',
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.05,
    shadowRadius: 8,
    elevation: 2,
  },
  cardLeft: { flexDirection: 'row', alignItems: 'center', gap: 10, flex: 1 },
  iconWrap: {
    width: 36, height: 36, borderRadius: 10, backgroundColor: '#fee2e2',
    alignItems: 'center', justifyContent: 'center',
  },
  icon: { fontSize: 16 },
  materialName: { fontSize: 15, fontWeight: '700', color: '#1e293b' },
  stockLevel: { fontSize: 12, color: '#64748b', marginTop: 2 },
  orderButton: { backgroundColor: '#2563eb', borderRadius: 10, paddingHorizontal: 16, paddingVertical: 11 },
  orderText: { color: '#fff', fontWeight: 'bold', fontSize: 12 },
  emptyCard: { alignItems: 'center', backgroundColor: '#fff', borderRadius: 14, paddingVertical: 40, marginTop: 8 },
  emptyIcon: { fontSize: 28, color: '#16a34a', marginBottom: 6 },
  emptyText: { textAlign: 'center', color: '#94a3b8', fontSize: 13 },
});