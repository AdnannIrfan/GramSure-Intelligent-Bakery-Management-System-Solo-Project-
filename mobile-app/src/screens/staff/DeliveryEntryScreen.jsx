import { useState, useEffect } from 'react';
import {
  View,
  Text,
  FlatList,
  ScrollView,
  TextInput,
  StyleSheet,
  TouchableOpacity,
  Alert,
  KeyboardAvoidingView,
  Platform,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import apiClient from '../../services/apiClient';

function parseItems(po) {
  if (!po || !po.items) return [];
  return typeof po.items === 'string' ? JSON.parse(po.items) : po.items;
}

export default function DeliveryEntryScreen() {
  const [orders, setOrders] = useState([]);
  const [suppliers, setSuppliers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [selected, setSelected] = useState(null);
  const [rows, setRows] = useState([]);

  useEffect(() => {
    loadData();
  }, []);

  async function loadData() {
    setLoading(true);
    try {
      const [poRes, supRes] = await Promise.all([
        apiClient.get('/procurement/purchase-orders', { params: { status: 'pending' } }),
        apiClient.get('/procurement/suppliers'),
      ]);
      setOrders(poRes.data.data);
      setSuppliers(supRes.data.data);
    } catch (err) {
      Alert.alert('Error', 'Failed to load pending deliveries');
    } finally {
      setLoading(false);
    }
  }

  function supplierName(id) {
    const s = suppliers.find((x) => String(x.id) === String(id));
    return s ? s.name : 'Supplier';
  }

  function openOrder(po) {
    setSelected(po);
    setRows(
      parseItems(po).map((it) => ({
        materialName: it.materialName,
        unit: it.unit || '',
        orderedQty: it.quantity,
        unitPrice: it.unitPrice || 0,
        quantity: '',
      }))
    );
  }

  function updateQuantity(index, value) {
    setRows((prev) => prev.map((r, i) => (i === index ? { ...r, quantity: value } : r)));
  }

  async function submit() {
    const actualItems = [];
    for (const r of rows) {
      const qty = Number(r.quantity);
      if (r.quantity === '' || Number.isNaN(qty) || qty < 0) {
        Alert.alert('Missing weight', `Enter the measured quantity for ${r.materialName}`);
        return;
      }
      actualItems.push({
        materialName: r.materialName,
        unit: r.unit,
        quantity: qty,
        unitPrice: Number(r.unitPrice) || 0,
      });
    }

    setSaving(true);
    try {
      const res = await apiClient.post(`/procurement/purchase-orders/${selected.id}/delivery`, { actualItems });
      const result = res.data.data;
      if (result && result.discrepancyFlag) {
        Alert.alert(
          '⚠️ Discrepancy detected',
          'The measured quantity does not match the order. The owner has been alerted.'
        );
      } else {
        Alert.alert('✅ Delivery recorded', 'Quantities match the order. Stock has been updated.');
      }
      setSelected(null);
      setRows([]);
      loadData();
    } catch (err) {
      Alert.alert('❌ Failed', err.response?.data?.message || 'Please try again');
    } finally {
      setSaving(false);
    }
  }

  /* ---------- entry form for one order ---------- */
  if (selected) {
    return (
      <SafeAreaView style={styles.safeArea} edges={['top']}>
        <View style={styles.headerBar}>
          <View style={{ flex: 1 }}>
            <Text style={styles.headerTitle}>Record Delivery</Text>
            <Text style={styles.headerSubtitle}>{supplierName(selected.supplier_id)}</Text>
          </View>
          <TouchableOpacity onPress={() => setSelected(null)}>
            <Text style={styles.backText}>Back</Text>
          </TouchableOpacity>
        </View>

        <KeyboardAvoidingView style={{ flex: 1 }} behavior={Platform.OS === 'ios' ? 'padding' : undefined}>
          <ScrollView contentContainerStyle={{ padding: 16, paddingBottom: 40 }} keyboardShouldPersistTaps="handled">
            <Text style={styles.hint}>
              Weigh what was actually delivered and enter the measured quantity. A difference of more than 2% alerts
              the owner.
            </Text>

            {rows.map((r, i) => (
              <View key={`${r.materialName}-${i}`} style={styles.card}>
                <View style={{ flex: 1 }}>
                  <Text style={styles.materialName}>{r.materialName}</Text>
                  <Text style={styles.stockLevel}>
                    Ordered: {r.orderedQty} {r.unit}
                  </Text>
                </View>
                <View style={styles.inputWrap}>
                  <TextInput
                    style={styles.input}
                    keyboardType="decimal-pad"
                    placeholder="Measured"
                    placeholderTextColor="#94a3b8"
                    value={r.quantity}
                    onChangeText={(v) => updateQuantity(i, v)}
                  />
                  <Text style={styles.unitText}>{r.unit}</Text>
                </View>
              </View>
            ))}

            <TouchableOpacity
              style={[styles.submitButton, saving && { opacity: 0.6 }]}
              onPress={submit}
              disabled={saving}
              activeOpacity={0.85}
            >
              <Text style={styles.submitText}>{saving ? 'SAVING...' : 'SUBMIT DELIVERY'}</Text>
            </TouchableOpacity>
          </ScrollView>
        </KeyboardAvoidingView>
      </SafeAreaView>
    );
  }

  /* ---------- list of pending orders ---------- */
  return (
    <SafeAreaView style={styles.safeArea} edges={['top']}>
      <View style={styles.headerBar}>
        <View>
          <Text style={styles.headerTitle}>Deliveries</Text>
          <Text style={styles.headerSubtitle}>
            {orders.length} order{orders.length !== 1 ? 's' : ''} waiting to be received
          </Text>
        </View>
        {orders.length > 0 && (
          <View style={styles.countPill}>
            <Text style={styles.countPillText}>{orders.length}</Text>
          </View>
        )}
      </View>

      <FlatList
        data={orders}
        keyExtractor={(item) => String(item.id)}
        refreshing={loading}
        onRefresh={loadData}
        contentContainerStyle={{ padding: 16, paddingBottom: 32 }}
        ListEmptyComponent={
          !loading && (
            <View style={styles.emptyCard}>
              <Text style={styles.emptyIcon}>✓</Text>
              <Text style={styles.emptyText}>No deliveries waiting. Pull down to refresh.</Text>
            </View>
          )
        }
        renderItem={({ item }) => {
          const items = parseItems(item);
          return (
            <View style={styles.card}>
              <View style={{ flex: 1 }}>
                <Text style={styles.materialName}>{supplierName(item.supplier_id)}</Text>
                <Text style={styles.stockLevel}>
                  {items.map((it) => `${it.materialName} ${it.quantity}${it.unit || ''}`).join(', ')}
                </Text>
              </View>
              <TouchableOpacity style={styles.orderButton} onPress={() => openOrder(item)} activeOpacity={0.85}>
                <Text style={styles.orderText}>RECEIVE</Text>
              </TouchableOpacity>
            </View>
          );
        }}
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
  backText: { color: '#93c5fd', fontSize: 14, fontWeight: '600' },
  countPill: { backgroundColor: '#dbeafe', paddingHorizontal: 10, paddingVertical: 4, borderRadius: 12 },
  countPillText: { fontSize: 12, fontWeight: '700', color: '#2563eb' },
  hint: { color: '#cbd5e1', fontSize: 13, marginBottom: 14, lineHeight: 18 },
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
  materialName: { fontSize: 15, fontWeight: '700', color: '#1e293b' },
  stockLevel: { fontSize: 12, color: '#64748b', marginTop: 2 },
  inputWrap: { flexDirection: 'row', alignItems: 'center', gap: 6 },
  input: {
    width: 90,
    borderWidth: 1,
    borderColor: '#cbd5e1',
    borderRadius: 10,
    paddingHorizontal: 10,
    paddingVertical: 9,
    fontSize: 15,
    color: '#1e293b',
    textAlign: 'right',
  },
  unitText: { fontSize: 12, color: '#64748b', minWidth: 22 },
  orderButton: { backgroundColor: '#2563eb', borderRadius: 10, paddingHorizontal: 16, paddingVertical: 11 },
  orderText: { color: '#fff', fontWeight: 'bold', fontSize: 12 },
  submitButton: { backgroundColor: '#2563eb', borderRadius: 12, paddingVertical: 15, alignItems: 'center', marginTop: 8 },
  submitText: { color: '#fff', fontWeight: 'bold', fontSize: 14 },
  emptyCard: { alignItems: 'center', backgroundColor: '#fff', borderRadius: 14, paddingVertical: 40, marginTop: 8 },
  emptyIcon: { fontSize: 28, color: '#16a34a', marginBottom: 6 },
  emptyText: { textAlign: 'center', color: '#94a3b8', fontSize: 13 },
});