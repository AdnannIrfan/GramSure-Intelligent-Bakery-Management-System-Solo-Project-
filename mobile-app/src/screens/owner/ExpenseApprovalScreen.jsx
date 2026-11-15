import { useState, useEffect } from 'react';
import {
  View, Text, FlatList, StyleSheet, TouchableOpacity, Image, Alert,
  Modal, TextInput, Linking,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import apiClient from '../../services/apiClient';

const MONTHS = [
  'January', 'February', 'March', 'April', 'May', 'June',
  'July', 'August', 'September', 'October', 'November', 'December',
];

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

function isPdf(url) {
  return typeof url === 'string' && url.toLowerCase().split('?')[0].endsWith('.pdf');
}

function errorMessage(err, fallback) {
  return err?.response?.data?.message || fallback;
}

export default function ExpenseApprovalScreen() {
  const [tab, setTab] = useState('pending'); // 'pending' | 'budget'

  // Pending queue
  const [expenses, setExpenses] = useState([]);
  const [loading, setLoading] = useState(true);
  const [busyId, setBusyId] = useState(null);

  // Reject popup
  const [rejectTarget, setRejectTarget] = useState(null);
  const [rejectReason, setRejectReason] = useState('');

  // Budget vs actual
  const now = new Date();
  const [month, setMonth] = useState(now.getMonth() + 1);
  const [year, setYear] = useState(now.getFullYear());
  const [report, setReport] = useState([]);
  const [reportLoading, setReportLoading] = useState(false);

  useEffect(() => {
    loadExpenses();
  }, []);

  useEffect(() => {
    if (tab === 'budget') loadReport();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [tab, month, year]);

  async function loadExpenses() {
    setLoading(true);
    try {
      const { data } = await apiClient.get('/expenses?status=pending');
      setExpenses(data.data);
    } catch (err) {
      Alert.alert('Error', errorMessage(err, 'Failed to load expenses'));
    } finally {
      setLoading(false);
    }
  }

  async function loadReport() {
    setReportLoading(true);
    try {
      const { data } = await apiClient.get(`/expenses/budget-vs-actual?month=${month}&year=${year}`);
      setReport(data.data);
    } catch (err) {
      setReport([]);
      Alert.alert('Error', errorMessage(err, 'Failed to load budget report'));
    } finally {
      setReportLoading(false);
    }
  }

  async function handleApprove(id) {
    setBusyId(id);
    try {
      await apiClient.patch(`/expenses/${id}/approve`);
    } catch (err) {
      Alert.alert('Error', errorMessage(err, 'Failed to approve expense'));
    } finally {
      setBusyId(null);
      loadExpenses();
    }
  }

  function openReject(id) {
    setRejectTarget(id);
    setRejectReason('');
  }

  async function confirmReject() {
    const id = rejectTarget;
    if (!id) return;
    setRejectTarget(null);
    setBusyId(id);
    try {
      await apiClient.patch(`/expenses/${id}/reject`, { reason: rejectReason });
    } catch (err) {
      Alert.alert('Error', errorMessage(err, 'Failed to reject expense'));
    } finally {
      setBusyId(null);
      loadExpenses();
    }
  }

  function changeMonth(delta) {
    let m = month + delta;
    let y = year;
    if (m < 1) { m = 12; y -= 1; }
    if (m > 12) { m = 1; y += 1; }
    setMonth(m);
    setYear(y);
  }

  function openReceipt(url) {
    Linking.openURL(url).catch(() => Alert.alert('Error', 'Could not open the receipt'));
  }

  function budgetColors(status) {
    if (status === 'over_budget') return { bg: '#fee2e2', fg: '#dc2626', label: 'Over budget' };
    if (status === 'within_budget') return { bg: '#dcfce7', fg: '#16a34a', label: 'Within budget' };
    return { bg: '#fef3c7', fg: '#92400e', label: 'No budget set' };
  }

  function renderExpense({ item }) {
    const busy = busyId === item.id;
    return (
      <View style={styles.card}>
        {item.receipt_url && !isPdf(item.receipt_url) ? (
          <TouchableOpacity activeOpacity={0.9} onPress={() => openReceipt(item.receipt_url)}>
            <Image source={{ uri: item.receipt_url }} style={styles.receiptImage} />
          </TouchableOpacity>
        ) : item.receipt_url ? (
          <TouchableOpacity style={styles.receiptPlaceholder} onPress={() => openReceipt(item.receipt_url)}>
            <Text style={styles.pdfText}>📄 PDF receipt — tap to open</Text>
          </TouchableOpacity>
        ) : (
          <View style={styles.receiptPlaceholder}>
            <Text style={styles.receiptPlaceholderText}>No receipt attached</Text>
          </View>
        )}

        <View style={styles.cardBody}>
          <View style={styles.categoryRow}>
            <Text style={styles.category}>{item.category}</Text>
            {item.duplicate_flag && (
              <View style={styles.duplicateBadge}>
                <Text style={styles.duplicateBadgeText}>⚠ Possible Duplicate</Text>
              </View>
            )}
          </View>
          <Text style={styles.amount}>{formatRs(item.amount)}</Text>
          {!!item.description && <Text style={styles.description}>{item.description}</Text>}
          <Text style={styles.dateText}>{formatDate(item.expense_date || item.created_at)}</Text>

          <View style={styles.buttonRow}>
            <TouchableOpacity
              style={[styles.approveButton, busy && styles.disabled]}
              onPress={() => handleApprove(item.id)}
              disabled={busy}
              activeOpacity={0.85}
            >
              <Text style={styles.approveText}>✓ Approve</Text>
            </TouchableOpacity>
            <TouchableOpacity
              style={[styles.rejectButton, busy && styles.disabled]}
              onPress={() => openReject(item.id)}
              disabled={busy}
              activeOpacity={0.85}
            >
              <Text style={styles.rejectText}>✕ Reject</Text>
            </TouchableOpacity>
          </View>
        </View>
      </View>
    );
  }

  function renderBudgetRow({ item }) {
    const c = budgetColors(item.status);
    return (
      <View style={styles.budgetCard}>
        <View style={styles.budgetTopRow}>
          <Text style={styles.budgetCategory}>{item.category}</Text>
          <View style={[styles.statusPill, { backgroundColor: c.bg }]}>
            <Text style={[styles.statusPillText, { color: c.fg }]}>{c.label}</Text>
          </View>
        </View>
        <View style={styles.budgetGrid}>
          <View style={styles.budgetCell}>
            <Text style={styles.budgetLabel}>Budget</Text>
            <Text style={styles.budgetValue}>{formatRs(item.budgeted)}</Text>
          </View>
          <View style={styles.budgetCell}>
            <Text style={styles.budgetLabel}>Spent</Text>
            <Text style={styles.budgetValue}>{formatRs(item.actual)}</Text>
          </View>
          <View style={styles.budgetCell}>
            <Text style={styles.budgetLabel}>Pending</Text>
            <Text style={[styles.budgetValue, { color: '#94a3b8' }]}>{formatRs(item.pending)}</Text>
          </View>
          <View style={styles.budgetCell}>
            <Text style={styles.budgetLabel}>Remaining</Text>
            <Text style={[styles.budgetValue, item.variance < 0 && { color: '#dc2626' }]}>
              {item.budgeted > 0 ? formatRs(item.variance) : '—'}
            </Text>
          </View>
        </View>
      </View>
    );
  }

  return (
    <SafeAreaView style={styles.safeArea} edges={['top']}>
      <View style={styles.headerBar}>
        <View>
          <Text style={styles.headerTitle}>Expense Approvals</Text>
          <Text style={styles.headerSubtitle}>
            {expenses.length} pending review{expenses.length !== 1 ? 's' : ''}
          </Text>
        </View>
        {expenses.length > 0 && (
          <View style={styles.countPill}>
            <Text style={styles.countPillText}>{expenses.length}</Text>
          </View>
        )}
      </View>

      <View style={styles.tabRow}>
        {[
          { key: 'pending', label: 'Pending' },
          { key: 'budget', label: 'Budget' },
        ].map((t) => (
          <TouchableOpacity
            key={t.key}
            style={[styles.tabButton, tab === t.key && styles.tabButtonActive]}
            onPress={() => setTab(t.key)}
            activeOpacity={0.85}
          >
            <Text style={[styles.tabText, tab === t.key && styles.tabTextActive]}>{t.label}</Text>
          </TouchableOpacity>
        ))}
      </View>

      {tab === 'pending' ? (
        <FlatList
          data={expenses}
          keyExtractor={(item) => item.id}
          refreshing={loading}
          onRefresh={loadExpenses}
          contentContainerStyle={{ padding: 16, paddingBottom: 32 }}
          ListEmptyComponent={
            !loading && (
              <View style={styles.emptyCard}>
                <Text style={styles.emptyIcon}>✓</Text>
                <Text style={styles.emptyText}>No pending expenses.</Text>
              </View>
            )
          }
          renderItem={renderExpense}
        />
      ) : (
        <FlatList
          data={report}
          keyExtractor={(item) => item.category}
          refreshing={reportLoading}
          onRefresh={loadReport}
          contentContainerStyle={{ padding: 16, paddingBottom: 32 }}
          ListHeaderComponent={
            <View style={styles.monthRow}>
              <TouchableOpacity style={styles.monthArrow} onPress={() => changeMonth(-1)}>
                <Text style={styles.monthArrowText}>‹</Text>
              </TouchableOpacity>
              <Text style={styles.monthText}>{MONTHS[month - 1]} {year}</Text>
              <TouchableOpacity style={styles.monthArrow} onPress={() => changeMonth(1)}>
                <Text style={styles.monthArrowText}>›</Text>
              </TouchableOpacity>
            </View>
          }
          ListEmptyComponent={
            !reportLoading && (
              <View style={styles.emptyCard}>
                <Text style={styles.emptyText}>No budget or spending for this month.</Text>
              </View>
            )
          }
          renderItem={renderBudgetRow}
        />
      )}

      <Modal visible={!!rejectTarget} transparent animationType="fade" onRequestClose={() => setRejectTarget(null)}>
        <View style={styles.modalBackdrop}>
          <View style={styles.modalCard}>
            <Text style={styles.modalTitle}>Reject expense</Text>
            <Text style={styles.modalHint}>Add a reason so the staff member knows why (optional).</Text>
            <TextInput
              style={styles.modalInput}
              value={rejectReason}
              onChangeText={setRejectReason}
              placeholder="e.g. Receipt is unclear"
              placeholderTextColor="#94a3b8"
              multiline
            />
            <View style={styles.modalButtons}>
              <TouchableOpacity style={styles.modalCancel} onPress={() => setRejectTarget(null)}>
                <Text style={styles.modalCancelText}>Cancel</Text>
              </TouchableOpacity>
              <TouchableOpacity style={styles.modalReject} onPress={confirmReject}>
                <Text style={styles.modalRejectText}>Reject</Text>
              </TouchableOpacity>
            </View>
          </View>
        </View>
      </Modal>
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
  countPill: { backgroundColor: '#fef3c7', paddingHorizontal: 10, paddingVertical: 4, borderRadius: 12 },
  countPillText: { fontSize: 12, fontWeight: '700', color: '#92400e' },

  tabRow: { flexDirection: 'row', paddingHorizontal: 16, paddingBottom: 12, gap: 8, backgroundColor: '#1e293b' },
  tabButton: { flex: 1, paddingVertical: 9, borderRadius: 10, alignItems: 'center', backgroundColor: '#334155' },
  tabButtonActive: { backgroundColor: '#fff' },
  tabText: { color: '#cbd5e1', fontWeight: '700', fontSize: 13 },
  tabTextActive: { color: '#1e293b' },

  card: {
    backgroundColor: '#fff',
    borderRadius: 16,
    marginBottom: 14,
    overflow: 'hidden',
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.05,
    shadowRadius: 8,
    elevation: 2,
  },
  receiptImage: { width: '100%', height: 170, backgroundColor: '#f1f5f9' },
  receiptPlaceholder: {
    width: '100%', height: 80, backgroundColor: '#f8fafc',
    alignItems: 'center', justifyContent: 'center',
    borderBottomWidth: 1, borderBottomColor: '#e2e8f0',
  },
  receiptPlaceholderText: { color: '#94a3b8', fontSize: 12, fontStyle: 'italic' },
  pdfText: { color: '#2563eb', fontSize: 13, fontWeight: '600' },
  cardBody: { padding: 14 },
  categoryRow: { flexDirection: 'row', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: 4, gap: 8 },
  category: { fontSize: 15, fontWeight: '700', color: '#1e293b', textTransform: 'capitalize' },
  duplicateBadge: { backgroundColor: '#fee2e2', paddingHorizontal: 8, paddingVertical: 3, borderRadius: 8 },
  duplicateBadgeText: { fontSize: 10, fontWeight: '700', color: '#dc2626' },
  amount: { fontSize: 20, fontWeight: 'bold', color: '#1e293b', marginBottom: 4 },
  description: { fontSize: 13, color: '#475569', marginBottom: 2 },
  dateText: { fontSize: 11, color: '#94a3b8', marginBottom: 12 },
  buttonRow: { flexDirection: 'row', gap: 8 },
  approveButton: { flex: 1, backgroundColor: '#16a34a', borderRadius: 10, paddingVertical: 11, alignItems: 'center' },
  approveText: { color: '#fff', fontWeight: '700', fontSize: 13 },
  rejectButton: { flex: 1, backgroundColor: '#fee2e2', borderRadius: 10, paddingVertical: 11, alignItems: 'center' },
  rejectText: { color: '#dc2626', fontWeight: '700', fontSize: 13 },
  disabled: { opacity: 0.5 },
  emptyCard: { alignItems: 'center', backgroundColor: '#fff', borderRadius: 14, paddingVertical: 40, marginTop: 8 },
  emptyIcon: { fontSize: 28, color: '#16a34a', marginBottom: 6 },
  emptyText: { textAlign: 'center', color: '#94a3b8', fontSize: 13 },

  monthRow: {
    flexDirection: 'row', alignItems: 'center', justifyContent: 'space-between',
    backgroundColor: '#fff', borderRadius: 14, paddingHorizontal: 8, paddingVertical: 6, marginBottom: 14,
  },
  monthArrow: { paddingHorizontal: 16, paddingVertical: 4 },
  monthArrowText: { fontSize: 26, color: '#1e293b', fontWeight: '700' },
  monthText: { fontSize: 15, fontWeight: '700', color: '#1e293b' },
  budgetCard: { backgroundColor: '#fff', borderRadius: 14, padding: 14, marginBottom: 12 },
  budgetTopRow: { flexDirection: 'row', justifyContent: 'space-between', alignItems: 'center', marginBottom: 10 },
  budgetCategory: { fontSize: 15, fontWeight: '700', color: '#1e293b', textTransform: 'capitalize' },
  statusPill: { paddingHorizontal: 8, paddingVertical: 3, borderRadius: 8 },
  statusPillText: { fontSize: 10, fontWeight: '700' },
  budgetGrid: { flexDirection: 'row', flexWrap: 'wrap' },
  budgetCell: { width: '50%', marginBottom: 8 },
  budgetLabel: { fontSize: 11, color: '#94a3b8' },
  budgetValue: { fontSize: 14, fontWeight: '700', color: '#1e293b' },

  modalBackdrop: { flex: 1, backgroundColor: 'rgba(0,0,0,0.45)', justifyContent: 'center', padding: 20 },
  modalCard: { backgroundColor: '#fff', borderRadius: 16, padding: 18 },
  modalTitle: { fontSize: 17, fontWeight: 'bold', color: '#1e293b' },
  modalHint: { fontSize: 12, color: '#64748b', marginTop: 4, marginBottom: 12 },
  modalInput: {
    borderWidth: 1, borderColor: '#e2e8f0', borderRadius: 10, padding: 10,
    minHeight: 70, textAlignVertical: 'top', color: '#1e293b',
  },
  modalButtons: { flexDirection: 'row', justifyContent: 'flex-end', gap: 10, marginTop: 14 },
  modalCancel: { paddingHorizontal: 14, paddingVertical: 10 },
  modalCancelText: { color: '#64748b', fontWeight: '700' },
  modalReject: { backgroundColor: '#dc2626', paddingHorizontal: 18, paddingVertical: 10, borderRadius: 10 },
  modalRejectText: { color: '#fff', fontWeight: '700' },
});