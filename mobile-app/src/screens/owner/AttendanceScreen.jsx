import { useState, useEffect } from 'react';
import {
  View, Text, FlatList, StyleSheet, TouchableOpacity, Image, Alert, Linking, ActivityIndicator,
} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import apiClient from '../../services/apiClient';

const MONTHS = [
  'January', 'February', 'March', 'April', 'May', 'June',
  'July', 'August', 'September', 'October', 'November', 'December',
];
const MONTH_SHORT = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

const EVENT_LABELS = {
  face_mismatch: 'Face did not match',
  wrong_pin: 'Wrong PIN',
  no_face_detected: 'No face detected',
};

function formatRs(n) {
  const rounded = Math.round(Number(n || 0));
  return `Rs. ${String(rounded).replace(/\B(?=(\d{3})+(?!\d))/g, ',')}`;
}

function formatDateTime(value) {
  if (!value) return '';
  const d = new Date(value);
  if (Number.isNaN(d.getTime())) return '';
  let h = d.getHours();
  const m = String(d.getMinutes()).padStart(2, '0');
  const ampm = h >= 12 ? 'PM' : 'AM';
  h = h % 12 || 12;
  return `${d.getDate()} ${MONTH_SHORT[d.getMonth()]}, ${h}:${m} ${ampm}`;
}

function formatDay(text) {
  if (!text) return '';
  const [y, m, d] = String(text).slice(0, 10).split('-').map(Number);
  return `${d} ${MONTH_SHORT[m - 1] || ''}`;
}

function hoursSince(value) {
  const ms = Date.now() - new Date(value).getTime();
  return Number.isFinite(ms) && ms > 0 ? (ms / 3600000).toFixed(1) : '0.0';
}

function pakistanToday() {
  return new Date().toLocaleDateString('en-CA', { timeZone: 'Asia/Karachi' });
}

function pad(n) {
  return String(n).padStart(2, '0');
}

export default function AttendanceScreen() {
  const [tab, setTab] = useState('live'); // 'live' | 'alerts' | 'payroll'
  const [loading, setLoading] = useState(false);

  const [live, setLive] = useState([]);
  const [attempts, setAttempts] = useState([]);
  const [slips, setSlips] = useState([]);
  const [generating, setGenerating] = useState(false);

  const now = new Date();
  const [month, setMonth] = useState(now.getMonth() + 1);
  const [year, setYear] = useState(now.getFullYear());

  useEffect(() => {
    loadTab();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [tab, month, year]);

  // First and last day of the chosen month. For the current month, pay is calculated up to today.
  function monthRange() {
    const lastDay = new Date(Date.UTC(year, month, 0)).getUTCDate();
    const from = `${year}-${pad(month)}-01`;
    const monthEnd = `${year}-${pad(month)}-${pad(lastDay)}`;
    const today = pakistanToday();
    const to = monthEnd < today ? monthEnd : today;
    return { from, to, monthEnd };
  }

  async function loadTab() {
    setLoading(true);
    try {
      if (tab === 'live') {
        const { data } = await apiClient.get('/staff/attendance/live');
        setLive(data.data);
      } else if (tab === 'alerts') {
        const { data } = await apiClient.get('/staff/attendance/attempts?limit=50');
        setAttempts(data.data);
      } else {
        const { from, monthEnd } = monthRange();
        const { data } = await apiClient.get(`/staff/payroll/slips?fromDate=${from}&toDate=${monthEnd}`);
        setSlips(data.data);
      }
    } catch (err) {
      Alert.alert('Error', err.response?.data?.message || 'Failed to load data');
    } finally {
      setLoading(false);
    }
  }

  function confirmForceCheckOut(item) {
    Alert.alert(
      'Force check-out',
      `Close ${item.name}'s open shift now? Use this if they forgot to check out.`,
      [
        { text: 'Cancel', style: 'cancel' },
        { text: 'Check out', style: 'destructive', onPress: () => forceCheckOut(item.attendance_id) },
      ]
    );
  }

  async function forceCheckOut(id) {
    try {
      await apiClient.post(`/staff/attendance/${id}/force-check-out`);
    } catch (err) {
      Alert.alert('Error', err.response?.data?.message || 'Could not check out');
    }
    loadTab();
  }

  async function generatePayroll() {
    const { from, to } = monthRange();
    if (from > to) {
      Alert.alert('Not yet', 'This month has not started, so there is nothing to calculate.');
      return;
    }
    setGenerating(true);
    try {
      await apiClient.post('/staff/payroll/generate', { fromDate: from, toDate: to });
      Alert.alert('✅ Done', `Salary slips calculated for ${formatDay(from)} to ${formatDay(to)}.`);
    } catch (err) {
      Alert.alert('Error', err.response?.data?.message || 'Could not generate salary slips');
    } finally {
      setGenerating(false);
      loadTab();
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

  function openPhoto(url) {
    if (url) Linking.openURL(url).catch(() => Alert.alert('Error', 'Could not open the photo'));
  }

  function renderSelfie(url) {
    if (!url) {
      return (
        <View style={styles.noPhoto}>
          <Text style={styles.noPhotoText}>No photo</Text>
        </View>
      );
    }
    return (
      <TouchableOpacity activeOpacity={0.85} onPress={() => openPhoto(url)}>
        <Image source={{ uri: url }} style={styles.photo} />
      </TouchableOpacity>
    );
  }

  function renderLive({ item }) {
    const score = item.face_match_score == null ? null : Math.round(Number(item.face_match_score) * 100);
    return (
      <View style={styles.card}>
        {renderSelfie(item.selfie_url)}
        <View style={{ flex: 1 }}>
          <Text style={styles.name}>{item.name}</Text>
          <Text style={styles.meta}>
            In at {formatDateTime(item.check_in_time)} · {hoursSince(item.check_in_time)} h
          </Text>
          <Text style={styles.meta}>
            {item.check_in_method === 'pin' ? 'PIN' : `Selfie${score != null ? ` · ${score}%` : ''}`}
            {item.shift ? ` · ${item.shift}` : ''}
          </Text>
          <TouchableOpacity style={styles.smallButton} onPress={() => confirmForceCheckOut(item)} activeOpacity={0.85}>
            <Text style={styles.smallButtonText}>Force check-out</Text>
          </TouchableOpacity>
        </View>
      </View>
    );
  }

  function renderAttempt({ item }) {
    const score = item.face_match_score == null ? null : Math.round(Number(item.face_match_score) * 100);
    return (
      <View style={[styles.card, { borderLeftColor: '#dc2626' }]}>
        {renderSelfie(item.selfie_url)}
        <View style={{ flex: 1 }}>
          <Text style={styles.name}>{item.name || 'Unknown staff'}</Text>
          <Text style={[styles.meta, { color: '#dc2626', fontWeight: '700' }]}>
            {EVENT_LABELS[item.event_type] || item.event_type}
            {score != null ? ` · ${score}%` : ''}
          </Text>
          <Text style={styles.meta}>{formatDateTime(item.created_at)}</Text>
        </View>
      </View>
    );
  }

  function renderSlip({ item }) {
    return (
      <View style={styles.slipCard}>
        <View style={styles.slipTop}>
          <View style={{ flex: 1 }}>
            <Text style={styles.name}>{item.name}</Text>
            <Text style={styles.meta}>
              {item.position ? `${item.position} · ` : ''}
              {formatDay(item.period_from_text)} – {formatDay(item.period_to_text)}
            </Text>
          </View>
          <Text style={styles.net}>{formatRs(item.net_pay)}</Text>
        </View>
        <View style={styles.slipGrid}>
          <View style={styles.slipCell}>
            <Text style={styles.cellLabel}>Days</Text>
            <Text style={styles.cellValue}>{item.days_worked}</Text>
          </View>
          <View style={styles.slipCell}>
            <Text style={styles.cellLabel}>Hours</Text>
            <Text style={styles.cellValue}>{Number(item.total_hours).toFixed(1)}</Text>
          </View>
          <View style={styles.slipCell}>
            <Text style={styles.cellLabel}>Gross</Text>
            <Text style={styles.cellValue}>{formatRs(item.gross_pay)}</Text>
          </View>
          <View style={styles.slipCell}>
            <Text style={styles.cellLabel}>Deductions</Text>
            <Text style={[styles.cellValue, Number(item.deductions) > 0 && { color: '#dc2626' }]}>
              {formatRs(item.deductions)}
            </Text>
          </View>
        </View>
      </View>
    );
  }

  const tabs = [
    { key: 'live', label: 'Live' },
    { key: 'alerts', label: 'Alerts' },
    { key: 'payroll', label: 'Payroll' },
  ];

  return (
    <SafeAreaView style={styles.safeArea} edges={['top']}>
      <View style={styles.headerBar}>
        <View>
          <Text style={styles.headerTitle}>Staff & Attendance</Text>
          <Text style={styles.headerSubtitle}>
            {tab === 'live' && `${live.length} on shift now`}
            {tab === 'alerts' && 'Failed check-in attempts'}
            {tab === 'payroll' && 'Salary slips'}
          </Text>
        </View>
      </View>

      <View style={styles.tabRow}>
        {tabs.map((t) => (
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

      {tab === 'live' && (
        <FlatList
          data={live}
          keyExtractor={(item) => String(item.attendance_id)}
          refreshing={loading}
          onRefresh={loadTab}
          contentContainerStyle={{ padding: 16, paddingBottom: 32 }}
          ListEmptyComponent={
            !loading && (
              <View style={styles.emptyCard}>
                <Text style={styles.emptyText}>Nobody is checked in right now.</Text>
              </View>
            )
          }
          renderItem={renderLive}
        />
      )}

      {tab === 'alerts' && (
        <FlatList
          data={attempts}
          keyExtractor={(item) => String(item.id)}
          refreshing={loading}
          onRefresh={loadTab}
          contentContainerStyle={{ padding: 16, paddingBottom: 32 }}
          ListEmptyComponent={
            !loading && (
              <View style={styles.emptyCard}>
                <Text style={styles.emptyText}>No failed attempts. All clear.</Text>
              </View>
            )
          }
          renderItem={renderAttempt}
        />
      )}

      {tab === 'payroll' && (
        <FlatList
          data={slips}
          keyExtractor={(item) => String(item.id)}
          refreshing={loading}
          onRefresh={loadTab}
          contentContainerStyle={{ padding: 16, paddingBottom: 32 }}
          ListHeaderComponent={
            <View>
              <View style={styles.monthRow}>
                <TouchableOpacity style={styles.monthArrow} onPress={() => changeMonth(-1)}>
                  <Text style={styles.monthArrowText}>‹</Text>
                </TouchableOpacity>
                <Text style={styles.monthText}>{MONTHS[month - 1]} {year}</Text>
                <TouchableOpacity style={styles.monthArrow} onPress={() => changeMonth(1)}>
                  <Text style={styles.monthArrowText}>›</Text>
                </TouchableOpacity>
              </View>
              <TouchableOpacity
                style={[styles.generateButton, generating && { opacity: 0.6 }]}
                onPress={generatePayroll}
                disabled={generating}
                activeOpacity={0.85}
              >
                {generating ? (
                  <ActivityIndicator color="#1e293b" />
                ) : (
                  <Text style={styles.generateText}>Generate salary slips</Text>
                )}
              </TouchableOpacity>
              <Text style={styles.note}>
                For the current month, pay is calculated up to today. Run it again any time to update the slips.
              </Text>
            </View>
          }
          ListEmptyComponent={
            !loading && (
              <View style={styles.emptyCard}>
                <Text style={styles.emptyText}>No slips for this month yet.</Text>
              </View>
            )
          }
          renderItem={renderSlip}
        />
      )}
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

  tabRow: { flexDirection: 'row', paddingHorizontal: 16, paddingBottom: 12, gap: 8 },
  tabButton: { flex: 1, paddingVertical: 9, borderRadius: 10, alignItems: 'center', backgroundColor: '#334155' },
  tabButtonActive: { backgroundColor: '#fff' },
  tabText: { color: '#cbd5e1', fontWeight: '700', fontSize: 13 },
  tabTextActive: { color: '#1e293b' },

  card: {
    flexDirection: 'row',
    gap: 12,
    backgroundColor: '#fff',
    borderRadius: 14,
    padding: 12,
    marginBottom: 10,
    borderLeftWidth: 4,
    borderLeftColor: '#22c55e',
  },
  photo: { width: 64, height: 64, borderRadius: 10, backgroundColor: '#e2e8f0' },
  noPhoto: { width: 64, height: 64, borderRadius: 10, backgroundColor: '#f1f5f9', alignItems: 'center', justifyContent: 'center' },
  noPhotoText: { fontSize: 10, color: '#94a3b8' },
  name: { fontSize: 15, fontWeight: '700', color: '#1e293b' },
  meta: { fontSize: 12, color: '#64748b', marginTop: 2 },
  smallButton: { alignSelf: 'flex-start', backgroundColor: '#fee2e2', borderRadius: 8, paddingHorizontal: 10, paddingVertical: 6, marginTop: 8 },
  smallButtonText: { color: '#dc2626', fontSize: 11, fontWeight: '700' },

  monthRow: {
    flexDirection: 'row', alignItems: 'center', justifyContent: 'space-between',
    backgroundColor: '#fff', borderRadius: 14, paddingHorizontal: 8, paddingVertical: 6, marginBottom: 12,
  },
  monthArrow: { paddingHorizontal: 16, paddingVertical: 4 },
  monthArrowText: { fontSize: 26, color: '#1e293b', fontWeight: '700' },
  monthText: { fontSize: 15, fontWeight: '700', color: '#1e293b' },
  generateButton: { backgroundColor: '#f59e0b', borderRadius: 12, paddingVertical: 14, alignItems: 'center' },
  generateText: { color: '#1e293b', fontWeight: 'bold', fontSize: 14 },
  note: { color: '#94a3b8', fontSize: 11, marginTop: 8, marginBottom: 14, lineHeight: 15 },

  slipCard: { backgroundColor: '#fff', borderRadius: 14, padding: 14, marginBottom: 10 },
  slipTop: { flexDirection: 'row', alignItems: 'center', marginBottom: 10, gap: 8 },
  net: { fontSize: 18, fontWeight: 'bold', color: '#1e293b' },
  slipGrid: { flexDirection: 'row' },
  slipCell: { flex: 1 },
  cellLabel: { fontSize: 10, color: '#94a3b8' },
  cellValue: { fontSize: 12, fontWeight: '700', color: '#1e293b', marginTop: 1 },

  emptyCard: { alignItems: 'center', backgroundColor: '#fff', borderRadius: 14, paddingVertical: 40, marginTop: 8 },
  emptyText: { textAlign: 'center', color: '#94a3b8', fontSize: 13 },
});