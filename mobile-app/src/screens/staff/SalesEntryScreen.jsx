import { useState, useContext } from 'react';
import { View, Text, TextInput, TouchableOpacity, StyleSheet, Alert, ScrollView } from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import apiClient from '../../services/apiClient';
import UrduLabel from '../../components/UrduLabel';
import { AuthContext } from '../../context/AuthContext';

const PAYMENT_TYPES = ['cash', 'credit', 'digital'];

export default function SalesEntryScreen() {
  const [productName, setProductName] = useState('');
  const [unitsSold, setUnitsSold] = useState('');
  const [amount, setAmount] = useState('');
  const [paymentType, setPaymentType] = useState('cash');
  const [submitting, setSubmitting] = useState(false);
  const { logout } = useContext(AuthContext);

  function handleLogoutPress() {
    Alert.alert('Log Out', 'Are you sure you want to log out?', [
      { text: 'Cancel', style: 'cancel' },
      { text: 'Log Out', style: 'destructive', onPress: logout },
    ]);
  }

  async function handleSubmit() {
    if (!productName || !unitsSold || !amount) {
      Alert.alert('Missing info', 'Please fill in all fields');
      return;
    }
    setSubmitting(true);
    try {
      await apiClient.post('/sales', {
        productName,
        unitsSold: parseInt(unitsSold, 10),
        amount: parseFloat(amount),
        paymentType,
        shift: getCurrentShift(),
      });
      Alert.alert('✅ Sale Recorded');
      setProductName('');
      setUnitsSold('');
      setAmount('');
    } catch (err) {
      Alert.alert('❌ Failed', err.response?.data?.message || 'Please try again');
    } finally {
      setSubmitting(false);
    }
  }

  function getCurrentShift() {
    const hour = new Date().getHours();
    return hour < 14 ? 'morning' : hour < 20 ? 'afternoon' : 'evening';
  }

  return (
    <SafeAreaView style={styles.safeArea} edges={['top']}>
      <View style={styles.headerBar}>
        <View>
          <Text style={styles.headerTitle}>Sales Entry</Text>
          <Text style={styles.headerSubtitle}>GramSure</Text>
        </View>
        <TouchableOpacity onPress={handleLogoutPress} style={styles.logoutButton} activeOpacity={0.8}>
          <Text style={styles.logoutText}>Log Out</Text>
        </TouchableOpacity>
      </View>

      <ScrollView style={styles.container} contentContainerStyle={{ padding: 16, paddingBottom: 32 }}>
        <UrduLabel text="Faroukht darj karen" english="Record a Sale" style={styles.subheader} />

        <View style={styles.card}>
          <Text style={styles.label}>Product Name</Text>
          <TextInput
            style={styles.input}
            placeholder="e.g. Chicken Patty"
            placeholderTextColor="#9ca3af"
            value={productName}
            onChangeText={setProductName}
          />

          <Text style={styles.label}>Units Sold</Text>
          <TextInput
            style={styles.input}
            placeholder="0"
            placeholderTextColor="#9ca3af"
            keyboardType="number-pad"
            value={unitsSold}
            onChangeText={setUnitsSold}
          />

          <Text style={styles.label}>Amount (Rs.)</Text>
          <TextInput
            style={styles.input}
            placeholder="0.00"
            placeholderTextColor="#9ca3af"
            keyboardType="decimal-pad"
            value={amount}
            onChangeText={setAmount}
          />

          <Text style={styles.label}>Payment Type</Text>
          <View style={styles.paymentRow}>
            {PAYMENT_TYPES.map((type) => (
              <TouchableOpacity
                key={type}
                style={[styles.paymentButton, paymentType === type && styles.paymentButtonActive]}
                onPress={() => setPaymentType(type)}
                activeOpacity={0.85}
              >
                <Text style={[styles.paymentText, paymentType === type && styles.paymentTextActive]}>
                  {type.toUpperCase()}
                </Text>
              </TouchableOpacity>
            ))}
          </View>
        </View>

        <TouchableOpacity
          style={[styles.submitButton, submitting && styles.submitButtonDisabled]}
          onPress={handleSubmit}
          disabled={submitting}
          activeOpacity={0.85}
        >
          <Text style={styles.submitText}>Submit Sale</Text>
        </TouchableOpacity>
      </ScrollView>
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
  headerTitle: { color: '#fff', fontSize: 18, fontWeight: 'bold' },
  headerSubtitle: { color: '#94a3b8', fontSize: 11, marginTop: 1 },
  logoutButton: { backgroundColor: 'rgba(254,226,226,0.95)', paddingHorizontal: 14, paddingVertical: 7, borderRadius: 10 },
  logoutText: { color: '#dc2626', fontWeight: '700', fontSize: 12 },
  container: { flex: 1, backgroundColor: '#f8fafc' },
  subheader: { fontSize: 16, fontWeight: '600', color: '#1e293b', textAlign: 'center', marginTop: 4, marginBottom: 16 },
  card: {
    backgroundColor: '#fff',
    borderRadius: 16,
    padding: 16,
    marginBottom: 16,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.05,
    shadowRadius: 8,
    elevation: 2,
  },
  label: { fontSize: 12, fontWeight: '600', color: '#64748b', marginBottom: 6, marginTop: 12, textTransform: 'uppercase', letterSpacing: 0.3 },
  input: {
    backgroundColor: '#f8fafc',
    borderRadius: 10,
    borderWidth: 1,
    borderColor: '#e2e8f0',
    padding: 14,
    fontSize: 16,
    color: '#111827',
  },
  paymentRow: { flexDirection: 'row', gap: 8, marginTop: 4 },
  paymentButton: { flex: 1, borderRadius: 10, borderWidth: 1, borderColor: '#e2e8f0', paddingVertical: 12, alignItems: 'center', backgroundColor: '#f8fafc' },
  paymentButtonActive: { backgroundColor: '#1e293b', borderColor: '#1e293b' },
  paymentText: { fontSize: 12, fontWeight: '600', color: '#64748b' },
  paymentTextActive: { color: '#fff' },
  submitButton: { backgroundColor: '#f59e0b', borderRadius: 14, paddingVertical: 16, alignItems: 'center' },
  submitButtonDisabled: { opacity: 0.6 },
  submitText: { color: '#1e293b', fontWeight: 'bold', fontSize: 16 },
});
