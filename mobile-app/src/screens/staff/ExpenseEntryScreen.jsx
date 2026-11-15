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
  Image,
  KeyboardAvoidingView,
  Platform,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import * as ImagePicker from 'expo-image-picker';
import apiClient from '../../services/apiClient';

// Must match ALLOWED_CATEGORIES in backend expense.service.js
const CATEGORIES = ['utilities', 'maintenance', 'packaging', 'salaries', 'rent', 'transport', 'other'];

function formatRs(n) {
  const rounded = Math.round(Number(n || 0));
  return `Rs. ${String(rounded).replace(/\B(?=(\d{3})+(?!\d))/g, ',')}`;
}

function formatDate(value) {
  if (!value) return '';
  const d = new Date(value);
  if (Number.isNaN(d.getTime())) return '';
  return `${String(d.getDate()).padStart(2, '0')}/${String(d.getMonth() + 1).padStart(2, '0')}/${d.getFullYear()}`;
}

function statusColors(status) {
  if (status === 'approved') return { bg: '#dcfce7', fg: '#16a34a' };
  if (status === 'rejected') return { bg: '#fee2e2', fg: '#dc2626' };
  return { bg: '#fef3c7', fg: '#92400e' };
}

export default function ExpenseEntryScreen() {
  const [expenses, setExpenses] = useState([]);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [showForm, setShowForm] = useState(false);

  const [category, setCategory] = useState('utilities');
  const [amount, setAmount] = useState('');
  const [description, setDescription] = useState('');
  const [photo, setPhoto] = useState(null); // { uri, mimeType, fileName }

  useEffect(() => {
    loadExpenses();
  }, []);

  async function loadExpenses() {
    setLoading(true);
    try {
      const { data } = await apiClient.get('/expenses/mine');
      setExpenses(data.data);
    } catch (err) {
      Alert.alert('Error', err.response?.data?.message || 'Failed to load your expenses');
    } finally {
      setLoading(false);
    }
  }

  function resetForm() {
    setCategory('utilities');
    setAmount('');
    setDescription('');
    setPhoto(null);
  }

  function keepAsset(result) {
    if (result.canceled || !result.assets?.length) return;
    const a = result.assets[0];
    setPhoto({
      uri: a.uri,
      mimeType: a.mimeType || 'image/jpeg',
      fileName: a.fileName || `receipt_${Date.now()}.jpg`,
    });
  }

  async function takePhoto() {
    const perm = await ImagePicker.requestCameraPermissionsAsync();
    if (!perm.granted) {
      Alert.alert('Camera permission needed', 'Allow camera access to photograph the receipt.');
      return;
    }
    const result = await ImagePicker.launchCameraAsync({ mediaTypes: ['images'], quality: 0.6 });
    keepAsset(result);
  }

  async function pickFromGallery() {
    const perm = await ImagePicker.requestMediaLibraryPermissionsAsync();
    if (!perm.granted) {
      Alert.alert('Permission needed', 'Allow photo access to choose a receipt.');
      return;
    }
    const result = await ImagePicker.launchImageLibraryAsync({ mediaTypes: ['images'], quality: 0.6 });
    keepAsset(result);
  }

  async function submit() {
    const value = Number(amount);
    if (!amount || Number.isNaN(value) || value <= 0) {
      Alert.alert('Missing amount', 'Enter an amount greater than 0');
      return;
    }

    const body = new FormData();
    body.append('category', category);
    body.append('amount', String(value));
    if (description.trim()) body.append('description', description.trim());
    if (photo) {
      body.append('receipt', {
        uri: photo.uri,
        name: photo.fileName,
        type: photo.mimeType,
      });
    }

    setSaving(true);
    try {
      const res = await apiClient.post('/expenses', body, {
        headers: { 'Content-Type': 'multipart/form-data' },
        transformRequest: (data) => data, // keep FormData as is on React Native
      });
      if (res.data?.data?.duplicate_flag) {
        Alert.alert(
          '⚠️ Possible duplicate',
          'Your expense was saved, but it looks like one that was already submitted. The owner will review it.'
        );
      } else {
        Alert.alert('✅ Submitted', 'Your expense was sent to the owner for approval.');
      }
      resetForm();
      setShowForm(false);
      loadExpenses();
    } catch (err) {
      Alert.alert('❌ Failed', err.response?.data?.message || 'Please check your connection and try again');
    } finally {
      setSaving(false);
    }
  }

  /* ---------- add expense form ---------- */
  if (showForm) {
    return (
      <SafeAreaView style={styles.safeArea} edges={['top']}>
        <View style={styles.headerBar}>
          <View style={{ flex: 1 }}>
            <Text style={styles.headerTitle}>New Expense</Text>
            <Text style={styles.headerSubtitle}>Photograph the receipt and submit</Text>
          </View>
          <TouchableOpacity onPress={() => { resetForm(); setShowForm(false); }}>
            <Text style={styles.backText}>Back</Text>
          </TouchableOpacity>
        </View>

        <KeyboardAvoidingView style={{ flex: 1 }} behavior={Platform.OS === 'ios' ? 'padding' : undefined}>
          <ScrollView contentContainerStyle={{ padding: 16, paddingBottom: 40 }} keyboardShouldPersistTaps="handled">
            <Text style={styles.label}>Category</Text>
            <View style={styles.chipRow}>
              {CATEGORIES.map((c) => (
                <TouchableOpacity
                  key={c}
                  style={[styles.chip, category === c && styles.chipActive]}
                  onPress={() => setCategory(c)}
                  activeOpacity={0.85}
                >
                  <Text style={[styles.chipText, category === c && styles.chipTextActive]}>{c}</Text>
                </TouchableOpacity>
              ))}
            </View>

            <Text style={styles.label}>Amount (Rs.)</Text>
            <TextInput
              style={styles.input}
              keyboardType="decimal-pad"
              placeholder="0"
              placeholderTextColor="#94a3b8"
              value={amount}
              onChangeText={setAmount}
            />

            <Text style={styles.label}>Description (optional)</Text>
            <TextInput
              style={styles.input}
              placeholder="e.g. Electricity bill"
              placeholderTextColor="#94a3b8"
              value={description}
              onChangeText={setDescription}
            />

            <Text style={styles.label}>Receipt photo</Text>
            {photo ? (
              <View style={styles.previewWrap}>
                <Image source={{ uri: photo.uri }} style={styles.preview} />
                <TouchableOpacity onPress={() => setPhoto(null)}>
                  <Text style={styles.removePhoto}>Remove photo</Text>
                </TouchableOpacity>
              </View>
            ) : (
              <View style={styles.photoButtons}>
                <TouchableOpacity style={styles.photoButton} onPress={takePhoto} activeOpacity={0.85}>
                  <Text style={styles.photoButtonText}>📷 Take photo</Text>
                </TouchableOpacity>
                <TouchableOpacity style={styles.photoButton} onPress={pickFromGallery} activeOpacity={0.85}>
                  <Text style={styles.photoButtonText}>🖼 Choose from gallery</Text>
                </TouchableOpacity>
              </View>
            )}

            <TouchableOpacity
              style={[styles.submitButton, saving && { opacity: 0.6 }]}
              onPress={submit}
              disabled={saving}
              activeOpacity={0.85}
            >
              <Text style={styles.submitText}>{saving ? 'SENDING...' : 'SUBMIT EXPENSE'}</Text>
            </TouchableOpacity>
          </ScrollView>
        </KeyboardAvoidingView>
      </SafeAreaView>
    );
  }

  /* ---------- my expenses list ---------- */
  return (
    <SafeAreaView style={styles.safeArea} edges={['top']}>
      <View style={styles.headerBar}>
        <View>
          <Text style={styles.headerTitle}>My Expenses</Text>
          <Text style={styles.headerSubtitle}>
            {expenses.length} submitted expense{expenses.length !== 1 ? 's' : ''}
          </Text>
        </View>
        <TouchableOpacity style={styles.addButton} onPress={() => setShowForm(true)} activeOpacity={0.85}>
          <Text style={styles.addButtonText}>+ NEW</Text>
        </TouchableOpacity>
      </View>

      <FlatList
        data={expenses}
        keyExtractor={(item) => String(item.id)}
        refreshing={loading}
        onRefresh={loadExpenses}
        contentContainerStyle={{ padding: 16, paddingBottom: 32 }}
        ListEmptyComponent={
          !loading && (
            <View style={styles.emptyCard}>
              <Text style={styles.emptyText}>No expenses yet. Tap + NEW to add one.</Text>
            </View>
          )
        }
        renderItem={({ item }) => {
          const c = statusColors(item.status);
          return (
            <View style={styles.card}>
              <View style={{ flex: 1 }}>
                <Text style={styles.cardCategory}>{item.category}</Text>
                <Text style={styles.cardAmount}>{formatRs(item.amount)}</Text>
                {!!item.description && <Text style={styles.cardMeta}>{item.description}</Text>}
                <Text style={styles.cardMeta}>{formatDate(item.expense_date || item.created_at)}</Text>
                {item.status === 'rejected' && !!item.rejection_reason && (
                  <Text style={styles.rejectReason}>Reason: {item.rejection_reason}</Text>
                )}
              </View>
              <View style={{ alignItems: 'flex-end', gap: 6 }}>
                <View style={[styles.statusPill, { backgroundColor: c.bg }]}>
                  <Text style={[styles.statusPillText, { color: c.fg }]}>{item.status}</Text>
                </View>
                {item.duplicate_flag && (
                  <View style={styles.duplicateBadge}>
                    <Text style={styles.duplicateBadgeText}>⚠ Duplicate</Text>
                  </View>
                )}
              </View>
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
  addButton: { backgroundColor: '#f59e0b', borderRadius: 10, paddingHorizontal: 14, paddingVertical: 9 },
  addButtonText: { color: '#1e293b', fontWeight: 'bold', fontSize: 12 },

  label: { color: '#cbd5e1', fontSize: 12, fontWeight: '700', marginBottom: 6, marginTop: 14, textTransform: 'uppercase' },
  chipRow: { flexDirection: 'row', flexWrap: 'wrap', gap: 8 },
  chip: { backgroundColor: '#334155', paddingHorizontal: 14, paddingVertical: 8, borderRadius: 18 },
  chipActive: { backgroundColor: '#f59e0b' },
  chipText: { color: '#cbd5e1', fontSize: 13, fontWeight: '600', textTransform: 'capitalize' },
  chipTextActive: { color: '#1e293b' },
  input: {
    backgroundColor: '#fff',
    borderRadius: 10,
    paddingHorizontal: 12,
    paddingVertical: 11,
    fontSize: 15,
    color: '#1e293b',
  },
  photoButtons: { flexDirection: 'row', gap: 10 },
  photoButton: { flex: 1, backgroundColor: '#334155', borderRadius: 12, paddingVertical: 16, alignItems: 'center' },
  photoButtonText: { color: '#fff', fontWeight: '700', fontSize: 13 },
  previewWrap: { alignItems: 'center' },
  preview: { width: '100%', height: 220, borderRadius: 12, backgroundColor: '#0f172a' },
  removePhoto: { color: '#fca5a5', fontWeight: '700', fontSize: 13, marginTop: 10 },
  submitButton: { backgroundColor: '#f59e0b', borderRadius: 12, paddingVertical: 15, alignItems: 'center', marginTop: 24 },
  submitText: { color: '#1e293b', fontWeight: 'bold', fontSize: 14 },

  card: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'flex-start',
    backgroundColor: '#fff',
    borderRadius: 14,
    padding: 12,
    marginBottom: 10,
    borderLeftWidth: 4,
    borderLeftColor: '#f59e0b',
    gap: 10,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.05,
    shadowRadius: 8,
    elevation: 2,
  },
  cardCategory: { fontSize: 15, fontWeight: '700', color: '#1e293b', textTransform: 'capitalize' },
  cardAmount: { fontSize: 18, fontWeight: 'bold', color: '#1e293b', marginTop: 2 },
  cardMeta: { fontSize: 12, color: '#64748b', marginTop: 2 },
  rejectReason: { fontSize: 12, color: '#dc2626', marginTop: 4 },
  statusPill: { paddingHorizontal: 10, paddingVertical: 4, borderRadius: 10 },
  statusPillText: { fontSize: 11, fontWeight: '700', textTransform: 'capitalize' },
  duplicateBadge: { backgroundColor: '#fee2e2', paddingHorizontal: 8, paddingVertical: 3, borderRadius: 8 },
  duplicateBadgeText: { fontSize: 10, fontWeight: '700', color: '#dc2626' },
  emptyCard: { alignItems: 'center', backgroundColor: '#fff', borderRadius: 14, paddingVertical: 40, marginTop: 8 },
  emptyText: { textAlign: 'center', color: '#94a3b8', fontSize: 13 },
});