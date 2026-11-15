import { useEffect, useMemo, useState } from 'react';
import apiClient from '../../services/apiClient';
import Badge from '../../components/common/Badge';
import Card from '../../components/common/Card'; // NEW
import { ColumnChart, HBarList, DonutChart } from '../../components/charts/DashboardCharts'; // NEW

const MONTHS = [
  'January', 'February', 'March', 'April', 'May', 'June',
  'July', 'August', 'September', 'October', 'November', 'December',
];
const MONTH_SHORT = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
const WEEK_DAYS = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'];
const SHIFT_OPTIONS = ['off', 'morning', 'afternoon', 'evening'];

const EVENT_LABELS = {
  face_mismatch: 'Face did not match',
  wrong_pin: 'Wrong PIN',
  no_face_detected: 'No face detected',
};

function pakistanToday() {
  return new Date().toLocaleDateString('en-CA', { timeZone: 'Asia/Karachi' });
}

function pad(n) {
  return String(n).padStart(2, '0');
}

function formatRs(n) {
  return `Rs. ${Math.round(Number(n || 0)).toLocaleString()}`;
}

function formatTime(value) {
  if (!value) return '—';
  const d = new Date(value);
  if (Number.isNaN(d.getTime())) return '—';
  return d.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
}

function formatDateTime(value) {
  if (!value) return '—';
  const d = new Date(value);
  if (Number.isNaN(d.getTime())) return '—';
  return `${d.getDate()} ${MONTH_SHORT[d.getMonth()]}, ${formatTime(value)}`;
}

function formatDay(text) {
  if (!text) return '';
  const [y, m, d] = String(text).slice(0, 10).split('-').map(Number);
  return `${d} ${MONTH_SHORT[m - 1] || ''}`;
}

function hoursBetween(from, to) {
  const ms = new Date(to) - new Date(from);
  if (!Number.isFinite(ms) || ms < 0) return '0.0';
  return (ms / 3600000).toFixed(1);
}

function errorMessage(err, fallback) {
  return err?.response?.data?.message || fallback;
}

function initials(name = '') {
  return name.split(' ').map((n) => n[0]).slice(0, 2).join('').toUpperCase();
}

function titleCase(s = '') {
  return s.charAt(0).toUpperCase() + s.slice(1);
}

const emptyAddForm = () => ({
  name: '',
  phone: '',
  password: '',
  pin: '',
  position: '',
  salaryRate: '',
  salaryType: 'daily',
});

function SelfieThumb({ url }) {
  if (!url) {
    return (
      <div className="w-12 h-12 rounded-lg bg-gray-100 flex items-center justify-center text-[10px] text-gray-400">
        No photo
      </div>
    );
  }
  return (
    <a href={url} target="_blank" rel="noreferrer">
      <img src={url} alt="Check-in selfie" className="w-12 h-12 rounded-lg object-cover border border-gray-100" />
    </a>
  );
}

export default function StaffPage() {
  const [tab, setTab] = useState('team'); // 'team' | 'attendance' | 'alerts' | 'payroll'
  const [notice, setNotice] = useState(null); // { type: 'success' | 'error', text }

  // Team
  const [staff, setStaff] = useState([]);
  const [liveAttendance, setLiveAttendance] = useState([]);
  const [loading, setLoading] = useState(true);
  const [showAdd, setShowAdd] = useState(false);
  const [addForm, setAddForm] = useState(emptyAddForm());
  const [adding, setAdding] = useState(false);

  // Edit pay popup
  const [payTarget, setPayTarget] = useState(null);
  const [payForm, setPayForm] = useState({ salaryRate: '', salaryType: 'daily' });
  const [savingPay, setSavingPay] = useState(false);

  // Shifts popup
  const [shiftTarget, setShiftTarget] = useState(null);
  const [shiftForm, setShiftForm] = useState({});
  const [savingShifts, setSavingShifts] = useState(false);

  // Attendance day log
  const [day, setDay] = useState(pakistanToday());
  const [dayLogs, setDayLogs] = useState([]);
  const [dayLoading, setDayLoading] = useState(false);

  // Alerts
  const [attempts, setAttempts] = useState([]);
  const [attemptsLoading, setAttemptsLoading] = useState(false);

  // Payroll
  const now = new Date();
  const [month, setMonth] = useState(now.getMonth() + 1);
  const [year, setYear] = useState(now.getFullYear());
  const [slips, setSlips] = useState([]);
  const [slipsLoading, setSlipsLoading] = useState(false);
  const [generating, setGenerating] = useState(false);

  useEffect(() => {
    loadData();
  }, []);

  useEffect(() => {
    if (tab === 'attendance') loadDay();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [tab, day]);

  useEffect(() => {
    if (tab === 'alerts') loadAttempts();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [tab]);

  useEffect(() => {
    if (tab === 'payroll') loadSlips();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [tab, month, year]);

  async function loadData() {
    setLoading(true);
    try {
      const [staffRes, attendanceRes] = await Promise.all([
        apiClient.get('/staff'),
        apiClient.get('/staff/attendance/live'),
      ]);
      setStaff(staffRes.data.data);
      setLiveAttendance(attendanceRes.data.data);
    } catch (err) {
      console.error('Failed to load staff data:', err);
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to load staff data') });
    } finally {
      setLoading(false);
    }
  }

  async function loadDay() {
    setDayLoading(true);
    try {
      const { data } = await apiClient.get('/staff/attendance/by-date', { params: { date: day } });
      setDayLogs(data.data);
    } catch (err) {
      setDayLogs([]);
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to load attendance') });
    } finally {
      setDayLoading(false);
    }
  }

  async function loadAttempts() {
    setAttemptsLoading(true);
    try {
      const { data } = await apiClient.get('/staff/attendance/attempts', { params: { limit: 50 } });
      setAttempts(data.data);
    } catch (err) {
      setAttempts([]);
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to load failed attempts') });
    } finally {
      setAttemptsLoading(false);
    }
  }

  function monthRange() {
    const lastDay = new Date(Date.UTC(year, month, 0)).getUTCDate();
    const from = `${year}-${pad(month)}-01`;
    const monthEnd = `${year}-${pad(month)}-${pad(lastDay)}`;
    const today = pakistanToday();
    const to = monthEnd < today ? monthEnd : today;
    return { from, to, monthEnd };
  }

  async function loadSlips() {
    setSlipsLoading(true);
    try {
      const { from, monthEnd } = monthRange();
      const { data } = await apiClient.get('/staff/payroll/slips', {
        params: { fromDate: from, toDate: monthEnd },
      });
      setSlips(data.data);
    } catch (err) {
      setSlips([]);
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to load salary slips') });
    } finally {
      setSlipsLoading(false);
    }
  }

  function isCheckedIn(userId) {
    return liveAttendance.some((a) => a.staff_id === userId);
  }

  const checkedInCount = staff.filter((s) => isCheckedIn(s.user_id)).length;

  /* ---------------- team actions ---------------- */

  async function handleAddStaff(e) {
    e.preventDefault();
    setNotice(null);
    if (addForm.password.length < 6) {
      setNotice({ type: 'error', text: 'Password must be at least 6 characters' });
      return;
    }
    if (!/^\d{4,6}$/.test(addForm.pin)) {
      setNotice({ type: 'error', text: 'PIN must be 4 to 6 digits' });
      return;
    }
    setAdding(true);
    try {
      await apiClient.post('/staff', {
        name: addForm.name,
        phone: addForm.phone,
        password: addForm.password,
        pin: addForm.pin,
        position: addForm.position,
        salaryRate: Number(addForm.salaryRate),
        salaryType: addForm.salaryType,
      });
      setNotice({
        type: 'success',
        text: 'Staff member added. They log in with their phone number and password, use their PIN to check in, and register their face on the phone.',
      });
      setAddForm(emptyAddForm());
      setShowAdd(false);
      loadData();
    } catch (err) {
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to add staff member') });
    } finally {
      setAdding(false);
    }
  }

  function openPay(s) {
    setPayTarget(s);
    setPayForm({ salaryRate: String(s.salary_rate), salaryType: s.salary_type });
  }

  async function savePay() {
    if (!payTarget) return;
    setNotice(null);
    setSavingPay(true);
    try {
      await apiClient.patch(`/staff/${payTarget.user_id}/salary`, {
        salaryRate: Number(payForm.salaryRate),
        salaryType: payForm.salaryType,
      });
      setNotice({ type: 'success', text: `Pay updated for ${payTarget.name}.` });
      setPayTarget(null);
      loadData();
    } catch (err) {
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to update pay (only the owner can change pay)') });
    } finally {
      setSavingPay(false);
    }
  }

  function openShifts(s) {
    const current = s.shift_schedule && typeof s.shift_schedule === 'object' ? s.shift_schedule : {};
    const form = {};
    WEEK_DAYS.forEach((d) => {
      form[d] = SHIFT_OPTIONS.includes(current[d]) ? current[d] : 'off';
    });
    setShiftTarget(s);
    setShiftForm(form);
  }

  async function saveShifts() {
    if (!shiftTarget) return;
    setNotice(null);
    setSavingShifts(true);
    try {
      const schedule = {};
      WEEK_DAYS.forEach((d) => {
        if (shiftForm[d] && shiftForm[d] !== 'off') schedule[d] = shiftForm[d];
      });
      await apiClient.patch(`/staff/${shiftTarget.user_id}/shifts`, { shiftSchedule: schedule });
      setNotice({ type: 'success', text: `Shifts updated for ${shiftTarget.name}.` });
      setShiftTarget(null);
      loadData();
    } catch (err) {
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to update shifts') });
    } finally {
      setSavingShifts(false);
    }
  }

  async function toggleActive(s) {
    const makeActive = s.is_active === false;
    const question = makeActive
      ? `Reactivate ${s.name}? They will be able to log in again.`
      : `Deactivate ${s.name}? They will not be able to check in. Their records and pay history are kept.`;
    if (!window.confirm(question)) return;
    setNotice(null);
    try {
      await apiClient.patch(`/staff/${s.user_id}/active`, { isActive: makeActive });
      setNotice({ type: 'success', text: `${s.name} ${makeActive ? 'reactivated' : 'deactivated'}.` });
      loadData();
    } catch (err) {
      setNotice({ type: 'error', text: errorMessage(err, 'Failed to change status') });
    }
  }

  /* ---------------- attendance actions ---------------- */

  async function forceCheckOut(item) {
    if (!window.confirm(`Close ${item.name}'s open shift now? Use this if they forgot to check out.`)) return;
    setNotice(null);
    try {
      await apiClient.post(`/staff/attendance/${item.attendance_id || item.id}/force-check-out`);
      setNotice({ type: 'success', text: `${item.name} checked out.` });
    } catch (err) {
      setNotice({ type: 'error', text: errorMessage(err, 'Could not check out') });
    }
    loadData();
    if (tab === 'attendance') loadDay();
  }

  /* ---------------- payroll actions ---------------- */

  function changeMonth(delta) {
    let m = month + delta;
    let y = year;
    if (m < 1) { m = 12; y -= 1; }
    if (m > 12) { m = 1; y += 1; }
    setMonth(m);
    setYear(y);
  }

  async function generatePayroll() {
    const { from, to } = monthRange();
    if (from > to) {
      setNotice({ type: 'error', text: 'This month has not started yet, so there is nothing to calculate.' });
      return;
    }
    setNotice(null);
    setGenerating(true);
    try {
      await apiClient.post('/staff/payroll/generate', { fromDate: from, toDate: to });
      setNotice({
        type: 'success',
        text: `Salary slips calculated for ${formatDay(from)} to ${formatDay(to)}.`,
      });
    } catch (err) {
      setNotice({ type: 'error', text: errorMessage(err, 'Could not generate salary slips') });
    } finally {
      setGenerating(false);
      loadSlips();
    }
  }

  const totalNet = slips.reduce((sum, s) => sum + Number(s.net_pay || 0), 0);

  /* ---------- NEW: derived chart data (display only, no API calls) ---------- */

  // Team: live status split (same rules as the status badges in the table)
  const statusSegments = useMemo(() => {
    let inactive = 0;
    let on = 0;
    let off = 0;
    staff.forEach((s) => {
      if (s.is_active === false) inactive += 1;
      else if (liveAttendance.some((a) => a.staff_id === s.user_id)) on += 1;
      else off += 1;
    });
    return [
      { label: 'Checked in', value: on, color: '#16a34a' },
      { label: 'Off shift', value: off, color: '#94a3b8' },
      { label: 'Inactive', value: inactive, color: '#dc2626' },
    ];
  }, [staff, liveAttendance]);

  const faceRegisteredCount = useMemo(() => staff.filter((s) => s.face_registered).length, [staff]);
  const inactiveCount = useMemo(() => staff.filter((s) => s.is_active === false).length, [staff]);

  const positionBars = useMemo(() => {
    const map = {};
    staff.forEach((s) => {
      const p = s.position || 'Unassigned';
      map[p] = (map[p] || 0) + 1;
    });
    return Object.entries(map)
      .sort((a, b) => b[1] - a[1])
      .slice(0, 6)
      .map(([label, value], i) => ({
        label,
        value,
        display: `${value} staff`,
        color: i === 0 ? '#f59e0b' : '#1e293b',
      }));
  }, [staff]);

  // Attendance: hours per person for the selected day
  const dayHours = useMemo(() => {
    const isToday = day === pakistanToday();
    const map = {};
    dayLogs.forEach((l) => {
      let h = 0;
      if (l.check_out_time) h = Number(hoursBetween(l.check_in_time, l.check_out_time));
      else if (isToday) h = Number(hoursBetween(l.check_in_time, new Date()));
      map[l.name] = (map[l.name] || 0) + h;
    });
    return map;
  }, [dayLogs, day]);

  const totalDayHours = useMemo(
    () => Object.values(dayHours).reduce((s, h) => s + h, 0),
    [dayHours]
  );

  const hoursBars = useMemo(
    () =>
      Object.entries(dayHours)
        .sort((a, b) => b[1] - a[1])
        .slice(0, 8)
        .map(([label, value], i) => ({
          label,
          value,
          display: `${value.toFixed(1)} h`,
          color: i === 0 ? '#f59e0b' : '#1e293b',
        })),
    [dayHours]
  );

  const methodSegments = useMemo(() => {
    const pin = dayLogs.filter((l) => l.check_in_method === 'pin').length;
    return [
      { label: 'Selfie', value: dayLogs.length - pin, color: '#1e293b' },
      { label: 'PIN', value: pin, color: '#f59e0b' },
    ];
  }, [dayLogs]);

  const stillOnShiftCount = useMemo(() => dayLogs.filter((l) => !l.check_out_time).length, [dayLogs]);

  // Alerts: counts per type and per day
  const attemptTypeSegments = useMemo(() => {
    const colors = { face_mismatch: '#dc2626', wrong_pin: '#f59e0b', no_face_detected: '#64748b' };
    const map = {};
    attempts.forEach((a) => {
      map[a.event_type] = (map[a.event_type] || 0) + 1;
    });
    return Object.entries(map).map(([type, value]) => ({
      label: EVENT_LABELS[type] || type,
      value,
      color: colors[type] || '#9ca3af',
    }));
  }, [attempts]);

  const attemptsByDay = useMemo(() => {
    const map = {};
    attempts.forEach((a) => {
      const d = new Date(a.created_at);
      if (Number.isNaN(d.getTime())) return;
      const key = `${d.getFullYear()}-${pad(d.getMonth() + 1)}-${pad(d.getDate())}`;
      if (!map[key]) map[key] = { key, label: `${d.getDate()} ${MONTH_SHORT[d.getMonth()]}`, value: 0 };
      map[key].value += 1;
    });
    return Object.values(map)
      .sort((a, b) => a.key.localeCompare(b.key))
      .slice(-7);
  }, [attempts]);

  const topFailedStaff = useMemo(() => {
    const map = {};
    attempts.forEach((a) => {
      const n = a.name || 'Unknown staff';
      map[n] = (map[n] || 0) + 1;
    });
    return Object.entries(map)
      .sort((a, b) => b[1] - a[1])
      .slice(0, 5)
      .map(([label, value]) => ({ label, value, display: `${value} failed`, color: '#dc2626' }));
  }, [attempts]);

  // Payroll
  const totalDeductions = useMemo(
    () => slips.reduce((sum, s) => sum + Number(s.deductions || 0), 0),
    [slips]
  );
  const totalGross = useMemo(
    () => slips.reduce((sum, s) => sum + Number(s.gross_pay || 0), 0),
    [slips]
  );
  const payBars = useMemo(
    () =>
      [...slips]
        .sort((a, b) => Number(b.net_pay) - Number(a.net_pay))
        .slice(0, 8)
        .map((s, i) => ({
          label: s.name,
          value: Number(s.net_pay) || 0,
          display: formatRs(s.net_pay),
          color: i === 0 ? '#f59e0b' : '#1e293b',
        })),
    [slips]
  );
  const payrollSegments = useMemo(
    () => [
      { label: 'Net pay', value: Math.round(totalNet), color: '#16a34a' },
      { label: 'Deductions', value: Math.round(totalDeductions), color: '#dc2626' },
    ],
    [totalNet, totalDeductions]
  );

  const inputClass =
    'w-full rounded-lg border border-gray-200 bg-white px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent transition-shadow';
  const labelClass = 'block text-xs font-semibold text-gray-500 uppercase mb-1';
  const tabs = [
    { key: 'team', label: 'Team' },
    { key: 'attendance', label: 'Attendance' },
    { key: 'alerts', label: 'Alerts' },
    { key: 'payroll', label: 'Payroll' },
  ];

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between gap-4">
          <div>
            <h1 className="text-2xl font-bold text-white">Staff Management & Attendance</h1>
            <p className="text-sm text-white/50 mt-1">
              {staff.length} team member{staff.length !== 1 ? 's' : ''} · {checkedInCount} currently on shift
            </p>
          </div>
          <div className="flex items-center gap-3">
            <div className="hidden sm:flex items-center gap-2 bg-white/10 backdrop-blur-sm px-4 py-2 rounded-xl border border-white/10">
              <span className="w-2 h-2 rounded-full bg-[#16a34a] animate-pulse" />
              <span className="text-sm text-white/80">{checkedInCount} checked in</span>
            </div>
            {tab === 'team' && (
              <button
                onClick={() => setShowAdd((s) => !s)}
                className="bg-gramsure-gold text-gramsure-navy text-sm font-semibold px-4 py-2 rounded-xl hover:opacity-90 active:scale-[0.98] transition-all shadow-lg shadow-black/10"
              >
                {showAdd ? 'Close' : '+ Add staff'}
              </button>
            )}
          </div>
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {notice && (
          <div
            className={`rounded-xl px-4 py-3 text-sm border flex items-center justify-between gap-3 ${
              notice.type === 'error'
                ? 'bg-red-50 text-red-700 border-red-100'
                : 'bg-green-50 text-green-700 border-green-100'
            }`}
          >
            <span>{notice.text}</span>
            <button onClick={() => setNotice(null)} className="text-xs font-semibold opacity-70 hover:opacity-100 shrink-0">
              Dismiss
            </button>
          </div>
        )}

        {/* Tabs */}
        <div className="inline-flex items-center gap-1 bg-white p-1 rounded-2xl border border-gray-100 shadow-sm">
          {tabs.map((t) => (
            <button
              key={t.key}
              onClick={() => setTab(t.key)}
              className={`text-sm font-semibold px-4 py-2 rounded-xl transition-all ${
                tab === t.key
                  ? 'bg-gramsure-navy text-white shadow-sm'
                  : 'text-gray-500 hover:text-gray-800 hover:bg-gray-50'
              }`}
            >
              {t.label}
            </button>
          ))}
        </div>

        {/* ---------------- TEAM ---------------- */}
        {tab === 'team' && (
          <>
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
              <Card title="Team Members" value={staff.length} icon="users" />
              <Card
                title="On Shift Now"
                value={checkedInCount}
                icon="check"
                tone={checkedInCount > 0 ? 'good' : 'default'}
                subtitle={`of ${staff.length} staff`}
              />
              <Card
                title="Face Registered"
                value={`${faceRegisteredCount}/${staff.length}`}
                icon="shield"
                tone={staff.length > 0 && faceRegisteredCount < staff.length ? 'warn' : 'good'}
                subtitle={faceRegisteredCount < staff.length ? 'some still need to register' : 'everyone is set'}
              />
              <Card
                title="Inactive"
                value={inactiveCount}
                icon="alert"
                tone={inactiveCount > 0 ? 'warn' : 'good'}
              />
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
              <Panel title="Live Status">
                {staff.length === 0 ? (
                  <p className="text-sm text-gray-400 text-center py-10">No staff yet</p>
                ) : (
                  <DonutChart centerValue={staff.length} centerLabel="staff" segments={statusSegments} size={130} />
                )}
              </Panel>

              <Panel title="Face Registration">
                {staff.length === 0 ? (
                  <p className="text-sm text-gray-400 text-center py-10">No staff yet</p>
                ) : (
                  <DonutChart
                    centerValue={faceRegisteredCount}
                    centerLabel="registered"
                    size={130}
                    segments={[
                      { label: 'Registered', value: faceRegisteredCount, color: '#16a34a' },
                      { label: 'Not registered', value: staff.length - faceRegisteredCount, color: '#f97316' },
                    ]}
                  />
                )}
              </Panel>

              <Panel title="Team by Position">
                <HBarList items={positionBars} emptyText="No staff yet" />
              </Panel>
            </div>

            {showAdd && (
              <form
                onSubmit={handleAddStaff}
                className="bg-white rounded-2xl shadow-sm border border-gray-100 p-6 grid grid-cols-1 md:grid-cols-3 gap-4"
              >
                <div className="md:col-span-3">
                  <h3 className="text-sm font-semibold text-gray-800">Add a new staff member</h3>
                  <p className="text-xs text-gray-400 mt-0.5">They will be able to log in with their phone and password.</p>
                </div>
                <div>
                  <label className={labelClass}>Full name</label>
                  <input
                    className={inputClass}
                    value={addForm.name}
                    onChange={(e) => setAddForm({ ...addForm, name: e.target.value })}
                    required
                  />
                </div>
                <div>
                  <label className={labelClass}>Phone (used to log in)</label>
                  <input
                    className={inputClass}
                    value={addForm.phone}
                    onChange={(e) => setAddForm({ ...addForm, phone: e.target.value })}
                    placeholder="03xxxxxxxxx"
                    required
                  />
                </div>
                <div>
                  <label className={labelClass}>Password (to log in, min 6)</label>
                  <input
                    className={inputClass}
                    type="password"
                    minLength={6}
                    value={addForm.password}
                    onChange={(e) => setAddForm({ ...addForm, password: e.target.value })}
                    required
                  />
                </div>
                <div>
                  <label className={labelClass}>PIN (check-in, 4 to 6 digits)</label>
                  <input
                    className={inputClass}
                    type="password"
                    inputMode="numeric"
                    maxLength={6}
                    value={addForm.pin}
                    onChange={(e) => setAddForm({ ...addForm, pin: e.target.value.replace(/\D/g, '') })}
                    required
                  />
                </div>
                <div>
                  <label className={labelClass}>Position</label>
                  <input
                    className={inputClass}
                    value={addForm.position}
                    onChange={(e) => setAddForm({ ...addForm, position: e.target.value })}
                    placeholder="e.g. Baker, Cashier"
                    required
                  />
                </div>
                <div>
                  <label className={labelClass}>Pay (Rs.)</label>
                  <input
                    className={inputClass}
                    type="number"
                    min="1"
                    step="0.01"
                    value={addForm.salaryRate}
                    onChange={(e) => setAddForm({ ...addForm, salaryRate: e.target.value })}
                    required
                  />
                </div>
                <div>
                  <label className={labelClass}>Paid</label>
                  <select
                    className={inputClass}
                    value={addForm.salaryType}
                    onChange={(e) => setAddForm({ ...addForm, salaryType: e.target.value })}
                  >
                    <option value="daily">Per day</option>
                    <option value="monthly">Per month</option>
                  </select>
                </div>
                <div className="md:col-span-3 flex justify-end">
                  <button
                    type="submit"
                    disabled={adding}
                    className="bg-gramsure-navy text-white text-sm font-semibold px-5 py-2.5 rounded-xl hover:bg-slate-800 disabled:opacity-50 transition-colors"
                  >
                    {adding ? 'Adding...' : 'Add staff member'}
                  </button>
                </div>
              </form>
            )}

            <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
              <div className="px-5 py-4 border-b border-gray-50">
                <h3 className="text-sm font-semibold text-gray-800">
                  All Staff
                  <span className="ml-2 text-xs font-normal text-gray-400">{staff.length} total</span>
                </h3>
              </div>
              {loading ? (
                <div className="p-6 space-y-3">
                  {[...Array(4)].map((_, i) => (
                    <div key={i} className="h-12 bg-gray-100 rounded-lg animate-pulse" />
                  ))}
                </div>
              ) : (
                <div className="overflow-x-auto">
                  <table className="w-full text-sm">
                    <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                      <tr>
                        <th className="text-left px-5 py-3 font-semibold">Name</th>
                        <th className="text-left px-5 py-3 font-semibold">Position</th>
                        <th className="text-left px-5 py-3 font-semibold">Salary</th>
                        <th className="text-left px-5 py-3 font-semibold">Face</th>
                        <th className="text-left px-5 py-3 font-semibold">Live Status</th>
                        <th className="text-left px-5 py-3 font-semibold">Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      {staff.map((s) => (
                        <tr
                          key={s.user_id}
                          className={`border-t border-gray-50 hover:bg-gray-50/60 transition-colors ${
                            s.is_active === false ? 'opacity-60' : ''
                          }`}
                        >
                          <td className="px-5 py-3">
                            <div className="flex items-center gap-3">
                              <div className="w-9 h-9 rounded-full bg-gramsure-navy/5 border border-gramsure-navy/10 flex items-center justify-center shrink-0">
                                <span className="text-xs font-bold text-gramsure-navy">{initials(s.name)}</span>
                              </div>
                              <div>
                                <div className="font-medium text-gray-800">{s.name}</div>
                                {s.phone && <div className="text-xs text-gray-400">{s.phone}</div>}
                              </div>
                            </div>
                          </td>
                          <td className="px-5 py-3 text-gray-600">{s.position}</td>
                          <td className="px-5 py-3 text-gray-600">
                            {formatRs(s.salary_rate)} <span className="text-gray-400">/ {s.salary_type}</span>
                          </td>
                          <td className="px-5 py-3">
                            {s.face_registered ? (
                              <Badge tone="good" dot>Registered</Badge>
                            ) : (
                              <Badge tone="warn" dot>Not registered</Badge>
                            )}
                          </td>
                          <td className="px-5 py-3">
                            {s.is_active === false ? (
                              <Badge tone="critical" dot>Inactive</Badge>
                            ) : isCheckedIn(s.user_id) ? (
                              <Badge tone="good" dot>Checked In</Badge>
                            ) : (
                              <Badge tone="neutral" dot>Off Shift</Badge>
                            )}
                          </td>
                          <td className="px-5 py-3">
                            <div className="flex items-center gap-2">
                              <button
                                onClick={() => openPay(s)}
                                className="text-xs font-semibold text-blue-600 bg-blue-50 hover:bg-blue-100 px-2.5 py-1 rounded-lg transition-colors"
                              >
                                Edit pay
                              </button>
                              <button
                                onClick={() => openShifts(s)}
                                className="text-xs font-semibold text-blue-600 bg-blue-50 hover:bg-blue-100 px-2.5 py-1 rounded-lg transition-colors"
                              >
                                Shifts
                              </button>
                              <button
                                onClick={() => toggleActive(s)}
                                className={`text-xs font-semibold px-2.5 py-1 rounded-lg transition-colors ${
                                  s.is_active === false
                                    ? 'text-[#16a34a] bg-[#16a34a]/10 hover:bg-[#16a34a]/20'
                                    : 'text-[#dc2626] bg-[#dc2626]/10 hover:bg-[#dc2626]/20'
                                }`}
                              >
                                {s.is_active === false ? 'Reactivate' : 'Deactivate'}
                              </button>
                            </div>
                          </td>
                        </tr>
                      ))}
                      {staff.length === 0 && (
                        <tr>
                          <td colSpan={6} className="px-5 py-12 text-center text-gray-400">
                            No staff members added yet.
                          </td>
                        </tr>
                      )}
                    </tbody>
                  </table>
                </div>
              )}
            </div>
          </>
        )}

        {/* ---------------- ATTENDANCE ---------------- */}
        {tab === 'attendance' && (
          <>
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
              <Card
                title="On Shift Now"
                value={liveAttendance.length}
                icon="check"
                tone={liveAttendance.length > 0 ? 'good' : 'default'}
              />
              <Card title="Check-ins (selected day)" value={dayLogs.length} icon="users" />
              <Card title="Total Hours" value={`${totalDayHours.toFixed(1)} h`} icon="chart" subtitle="for the selected day" />
              <Card
                title="Still On Shift"
                value={stillOnShiftCount}
                icon="alert"
                tone={stillOnShiftCount > 0 ? 'warn' : 'good'}
                subtitle="not checked out yet"
              />
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-5 gap-6">
              <Panel title="Hours Worked (selected day)" className="lg:col-span-3">
                <HBarList items={hoursBars} emptyText="No attendance recorded for this day" />
              </Panel>
              <Panel title="Check-in Method" className="lg:col-span-2">
                {dayLogs.length === 0 ? (
                  <p className="text-sm text-gray-400 text-center py-10">No check-ins this day</p>
                ) : (
                  <DonutChart centerValue={dayLogs.length} centerLabel="check-ins" segments={methodSegments} />
                )}
              </Panel>
            </div>

            <div className="bg-white rounded-2xl shadow-sm border border-gray-100 p-5">
              <div className="flex items-center justify-between mb-4">
                <h2 className="text-sm font-semibold text-gray-800">On shift now ({liveAttendance.length})</h2>
                <button
                  onClick={loadData}
                  className="text-xs font-semibold text-blue-600 bg-blue-50 hover:bg-blue-100 px-3 py-1.5 rounded-lg transition-colors"
                >
                  Refresh
                </button>
              </div>
              {liveAttendance.length === 0 ? (
                <p className="text-sm text-gray-400 py-4 text-center">Nobody is checked in right now.</p>
              ) : (
                <div className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-3">
                  {liveAttendance.map((a) => {
                    const score =
                      a.face_match_score == null ? null : Math.round(Number(a.face_match_score) * 100);
                    return (
                      <div
                        key={a.attendance_id}
                        className="flex gap-3 border border-gray-100 rounded-xl p-3 hover:shadow-sm transition-shadow"
                      >
                        <SelfieThumb url={a.selfie_url} />
                        <div className="flex-1 min-w-0">
                          <div className="flex items-center gap-2">
                            <span className="w-2 h-2 rounded-full bg-[#16a34a] animate-pulse shrink-0" />
                            <div className="font-semibold text-gray-800 truncate">{a.name}</div>
                          </div>
                          <div className="text-xs text-gray-500">
                            In at {formatTime(a.check_in_time)} · {hoursBetween(a.check_in_time, new Date())} h
                          </div>
                          <div className="text-xs text-gray-500">
                            {a.check_in_method === 'pin' ? 'PIN' : `Selfie${score != null ? ` · ${score}%` : ''}`}
                            {a.shift ? ` · ${a.shift}` : ''}
                          </div>
                          <button
                            onClick={() => forceCheckOut(a)}
                            className="mt-1 text-xs font-semibold text-[#dc2626] hover:underline"
                          >
                            Force check-out
                          </button>
                        </div>
                      </div>
                    );
                  })}
                </div>
              )}
            </div>

            <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
              <div className="px-5 py-4 flex flex-wrap items-center justify-between gap-3 border-b border-gray-50">
                <h2 className="text-sm font-semibold text-gray-800">Attendance log</h2>
                <input
                  type="date"
                  value={day}
                  max={pakistanToday()}
                  onChange={(e) => e.target.value && setDay(e.target.value)}
                  className="rounded-lg border border-gray-200 bg-gray-50 px-3 py-1.5 text-sm focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent"
                />
              </div>
              {dayLoading ? (
                <div className="p-6">
                  <div className="h-10 bg-gray-100 rounded-lg animate-pulse" />
                </div>
              ) : (
                <div className="overflow-x-auto">
                  <table className="w-full text-sm">
                    <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                      <tr>
                        <th className="text-left px-5 py-3 font-semibold">Photo</th>
                        <th className="text-left px-5 py-3 font-semibold">Name</th>
                        <th className="text-left px-5 py-3 font-semibold">Check in</th>
                        <th className="text-left px-5 py-3 font-semibold">Check out</th>
                        <th className="text-left px-5 py-3 font-semibold">Hours</th>
                        <th className="text-left px-5 py-3 font-semibold">Method</th>
                        <th className="text-left px-5 py-3 font-semibold">Shift</th>
                      </tr>
                    </thead>
                    <tbody>
                      {dayLogs.map((l) => {
                        const score =
                          l.face_match_score == null ? null : Math.round(Number(l.face_match_score) * 100);
                        return (
                          <tr key={l.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                            <td className="px-5 py-3">
                              <SelfieThumb url={l.selfie_url} />
                            </td>
                            <td className="px-5 py-3 font-medium text-gray-800">{l.name}</td>
                            <td className="px-5 py-3 text-gray-600">{formatTime(l.check_in_time)}</td>
                            <td className="px-5 py-3 text-gray-600">
                              {l.check_out_time ? (
                                formatTime(l.check_out_time)
                              ) : (
                                <span className="inline-flex items-center gap-2">
                                  <Badge tone="good" dot>On shift</Badge>
                                  <button
                                    onClick={() => forceCheckOut({ ...l, attendance_id: l.id })}
                                    className="text-xs font-semibold text-[#dc2626] hover:underline"
                                  >
                                    Force
                                  </button>
                                </span>
                              )}
                            </td>
                            <td className="px-5 py-3 text-gray-600">
                              {l.check_out_time ? hoursBetween(l.check_in_time, l.check_out_time) : '—'}
                            </td>
                            <td className="px-5 py-3 text-gray-600">
                              {l.check_in_method === 'pin' ? 'PIN' : `Selfie${score != null ? ` · ${score}%` : ''}`}
                            </td>
                            <td className="px-5 py-3 text-gray-600 capitalize">{l.shift || '—'}</td>
                          </tr>
                        );
                      })}
                      {dayLogs.length === 0 && (
                        <tr>
                          <td colSpan={7} className="px-5 py-12 text-center text-gray-400">
                            No attendance recorded for this day.
                          </td>
                        </tr>
                      )}
                    </tbody>
                  </table>
                </div>
              )}
            </div>
          </>
        )}

        {/* ---------------- ALERTS ---------------- */}
        {tab === 'alerts' && (
          <>
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
              <Card
                title="Failed Attempts"
                value={attempts.length}
                icon="shield"
                tone={attempts.length > 0 ? 'critical' : 'good'}
                subtitle="latest 50 shown"
              />
              <Card
                title="Face Mismatch"
                value={attempts.filter((a) => a.event_type === 'face_mismatch').length}
                icon="alert"
                tone="warn"
              />
              <Card
                title="Wrong PIN"
                value={attempts.filter((a) => a.event_type === 'wrong_pin').length}
                icon="alert"
                tone="warn"
              />
              <Card
                title="No Face Detected"
                value={attempts.filter((a) => a.event_type === 'no_face_detected').length}
                icon="alert"
              />
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
              <Panel title="Attempts by Type">
                {attempts.length === 0 ? (
                  <p className="text-sm text-gray-400 text-center py-10">No failed attempts</p>
                ) : (
                  <DonutChart centerValue={attempts.length} centerLabel="attempts" segments={attemptTypeSegments} size={130} />
                )}
              </Panel>
              <Panel title="Attempts by Day (last 7 days with activity)">
                <ColumnChart data={attemptsByDay} prefix="" color="#dc2626" highlightColor="#7f1d1d" />
              </Panel>
              <Panel title="Most Failed Attempts by Staff">
                <HBarList items={topFailedStaff} emptyText="No failed attempts" />
              </Panel>
            </div>

            <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
              <div className="px-5 py-4 flex items-center justify-between border-b border-gray-50">
                <div>
                  <h2 className="text-sm font-semibold text-gray-800">Failed check-in attempts</h2>
                  <p className="text-xs text-gray-400 mt-0.5">
                    Wrong faces and wrong PINs. Three failures in an hour send you a WhatsApp alert.
                  </p>
                </div>
                <button
                  onClick={loadAttempts}
                  className="text-xs font-semibold text-blue-600 bg-blue-50 hover:bg-blue-100 px-3 py-1.5 rounded-lg transition-colors"
                >
                  Refresh
                </button>
              </div>
              {attemptsLoading ? (
                <div className="p-6">
                  <div className="h-10 bg-gray-100 rounded-lg animate-pulse" />
                </div>
              ) : (
                <div className="overflow-x-auto">
                  <table className="w-full text-sm">
                    <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                      <tr>
                        <th className="text-left px-5 py-3 font-semibold">Photo</th>
                        <th className="text-left px-5 py-3 font-semibold">Staff</th>
                        <th className="text-left px-5 py-3 font-semibold">What happened</th>
                        <th className="text-left px-5 py-3 font-semibold">Score</th>
                        <th className="text-left px-5 py-3 font-semibold">When</th>
                      </tr>
                    </thead>
                    <tbody>
                      {attempts.map((a) => (
                        <tr key={a.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                          <td className="px-5 py-3">
                            <SelfieThumb url={a.selfie_url} />
                          </td>
                          <td className="px-5 py-3 font-medium text-gray-800">{a.name || 'Unknown staff'}</td>
                          <td className="px-5 py-3">
                            <Badge tone="critical" dot>{EVENT_LABELS[a.event_type] || a.event_type}</Badge>
                          </td>
                          <td className="px-5 py-3 text-gray-600">
                            {a.face_match_score == null ? '—' : `${Math.round(Number(a.face_match_score) * 100)}%`}
                          </td>
                          <td className="px-5 py-3 text-gray-600">{formatDateTime(a.created_at)}</td>
                        </tr>
                      ))}
                      {attempts.length === 0 && (
                        <tr>
                          <td colSpan={5} className="px-5 py-12 text-center text-gray-400">
                            No failed attempts. All clear.
                          </td>
                        </tr>
                      )}
                    </tbody>
                  </table>
                </div>
              )}
            </div>
          </>
        )}

        {/* ---------------- PAYROLL ---------------- */}
        {tab === 'payroll' && (
          <>
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
              <Card title="Total Payroll" value={formatRs(totalNet)} icon="money" subtitle={`${MONTHS[month - 1]} ${year}`} />
              <Card title="Salary Slips" value={slips.length} icon="users" />
              <Card
                title="Average Net Pay"
                value={formatRs(slips.length ? totalNet / slips.length : 0)}
                icon="chart"
                subtitle="per staff member"
              />
              <Card
                title="Total Deductions"
                value={formatRs(totalDeductions)}
                icon="alert"
                tone={totalDeductions > 0 ? 'warn' : 'good'}
              />
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-5 gap-6">
              <Panel title="Net Pay by Staff" className="lg:col-span-3">
                <HBarList items={payBars} emptyText="No salary slips yet. Generate them below." />
              </Panel>
              <Panel title="Net Pay vs Deductions" className="lg:col-span-2">
                {slips.length === 0 ? (
                  <p className="text-sm text-gray-400 text-center py-10">No salary slips yet</p>
                ) : (
                  <>
                    <DonutChart centerValue={slips.length} centerLabel="slips" segments={payrollSegments} />
                    <p className="text-xs text-gray-400 mt-3">Gross total: {formatRs(totalGross)} (Rs.)</p>
                  </>
                )}
              </Panel>
            </div>

            <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
              <div className="px-5 py-4 flex flex-wrap items-center justify-between gap-3 border-b border-gray-50">
                <div className="flex items-center gap-2">
                  <button
                    onClick={() => changeMonth(-1)}
                    className="w-8 h-8 rounded-lg bg-gray-100 hover:bg-gray-200 text-lg font-bold text-gray-700 transition-colors"
                  >
                    ‹
                  </button>
                  <span className="text-base font-bold text-gray-800 min-w-[150px] text-center">
                    {MONTHS[month - 1]} {year}
                  </span>
                  <button
                    onClick={() => changeMonth(1)}
                    className="w-8 h-8 rounded-lg bg-gray-100 hover:bg-gray-200 text-lg font-bold text-gray-700 transition-colors"
                  >
                    ›
                  </button>
                </div>
                <button
                  onClick={generatePayroll}
                  disabled={generating}
                  className="bg-gramsure-navy text-white text-sm font-semibold px-4 py-2 rounded-xl hover:bg-slate-800 disabled:opacity-50 transition-colors"
                >
                  {generating ? 'Calculating...' : 'Generate salary slips'}
                </button>
              </div>
              <p className="px-5 pt-3 text-xs text-gray-400">
                For the current month, pay is calculated up to today. Run it again any time to refresh the slips.
                Shifts that were never checked out are not paid until they are closed.
              </p>

              {slipsLoading ? (
                <div className="p-6">
                  <div className="h-10 bg-gray-100 rounded-lg animate-pulse" />
                </div>
              ) : (
                <div className="overflow-x-auto">
                  <table className="w-full text-sm mt-3">
                    <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                      <tr>
                        <th className="text-left px-5 py-3 font-semibold">Name</th>
                        <th className="text-left px-5 py-3 font-semibold">Period</th>
                        <th className="text-left px-5 py-3 font-semibold">Type</th>
                        <th className="text-left px-5 py-3 font-semibold">Days</th>
                        <th className="text-left px-5 py-3 font-semibold">Hours</th>
                        <th className="text-left px-5 py-3 font-semibold">Gross</th>
                        <th className="text-left px-5 py-3 font-semibold">Deductions</th>
                        <th className="text-left px-5 py-3 font-semibold">Net pay</th>
                      </tr>
                    </thead>
                    <tbody>
                      {slips.map((s) => (
                        <tr key={s.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                          <td className="px-5 py-3">
                            <div className="font-medium text-gray-800">{s.name}</div>
                            {s.position && <div className="text-xs text-gray-400">{s.position}</div>}
                          </td>
                          <td className="px-5 py-3 text-gray-600">
                            {formatDay(s.period_from_text)} – {formatDay(s.period_to_text)}
                          </td>
                          <td className="px-5 py-3 text-gray-600">{titleCase(s.salary_type)}</td>
                          <td className="px-5 py-3 text-gray-600">{s.days_worked}</td>
                          <td className="px-5 py-3 text-gray-600">{Number(s.total_hours).toFixed(1)}</td>
                          <td className="px-5 py-3 text-gray-600">{formatRs(s.gross_pay)}</td>
                          <td
                            className={`px-5 py-3 ${Number(s.deductions) > 0 ? 'text-[#dc2626]' : 'text-gray-400'}`}
                          >
                            {formatRs(s.deductions)}
                          </td>
                          <td className="px-5 py-3 font-bold text-gray-800">{formatRs(s.net_pay)}</td>
                        </tr>
                      ))}
                      {slips.length === 0 && (
                        <tr>
                          <td colSpan={8} className="px-5 py-12 text-center text-gray-400">
                            No salary slips for this month yet. Click “Generate salary slips”.
                          </td>
                        </tr>
                      )}
                    </tbody>
                    {slips.length > 0 && (
                      <tfoot>
                        <tr className="border-t border-gray-100 bg-gray-50/60">
                          <td colSpan={7} className="px-5 py-3 text-right text-xs font-semibold uppercase text-gray-500">
                            Total payroll
                          </td>
                          <td className="px-5 py-3 font-bold text-gray-800">{formatRs(totalNet)}</td>
                        </tr>
                      </tfoot>
                    )}
                  </table>
                </div>
              )}
            </div>
          </>
        )}
      </div>

      {/* Edit pay popup */}
      {payTarget && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50 backdrop-blur-sm px-4">
          <div className="bg-white rounded-2xl shadow-2xl w-full max-w-md p-6">
            <h3 className="text-lg font-bold text-gray-800">Edit pay: {payTarget.name}</h3>
            <p className="text-sm text-gray-500 mt-1">Only the owner can change pay. It applies to future salary slips.</p>
            <div className="mt-4 grid grid-cols-2 gap-3">
              <div>
                <label className={labelClass}>Pay (Rs.)</label>
                <input
                  className={inputClass}
                  type="number"
                  min="1"
                  step="0.01"
                  value={payForm.salaryRate}
                  onChange={(e) => setPayForm({ ...payForm, salaryRate: e.target.value })}
                />
              </div>
              <div>
                <label className={labelClass}>Paid</label>
                <select
                  className={inputClass}
                  value={payForm.salaryType}
                  onChange={(e) => setPayForm({ ...payForm, salaryType: e.target.value })}
                >
                  <option value="daily">Per day</option>
                  <option value="monthly">Per month</option>
                </select>
              </div>
            </div>
            <div className="mt-6 flex justify-end gap-3">
              <button
                onClick={() => setPayTarget(null)}
                className="text-sm font-semibold text-gray-500 hover:text-gray-700 px-3 py-2"
              >
                Cancel
              </button>
              <button
                onClick={savePay}
                disabled={savingPay}
                className="bg-gramsure-navy text-white text-sm font-semibold px-5 py-2 rounded-xl hover:bg-slate-800 disabled:opacity-50 transition-colors"
              >
                {savingPay ? 'Saving...' : 'Save'}
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Shifts popup */}
      {shiftTarget && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/50 backdrop-blur-sm px-4">
          <div className="bg-white rounded-2xl shadow-2xl w-full max-w-md p-6 max-h-[90vh] overflow-y-auto">
            <h3 className="text-lg font-bold text-gray-800">Weekly shifts: {shiftTarget.name}</h3>
            <p className="text-sm text-gray-500 mt-1">Choose a shift for each day, or “Off”.</p>
            <div className="mt-4 space-y-2">
              {WEEK_DAYS.map((d) => (
                <div key={d} className="flex items-center justify-between gap-3">
                  <span className="text-sm font-medium text-gray-700 w-28">{titleCase(d)}</span>
                  <select
                    className="rounded-lg border border-gray-200 bg-white px-3 py-1.5 text-sm flex-1 focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent"
                    value={shiftForm[d] || 'off'}
                    onChange={(e) => setShiftForm({ ...shiftForm, [d]: e.target.value })}
                  >
                    {SHIFT_OPTIONS.map((o) => (
                      <option key={o} value={o}>
                        {titleCase(o)}
                      </option>
                    ))}
                  </select>
                </div>
              ))}
            </div>
            <div className="mt-6 flex justify-end gap-3">
              <button
                onClick={() => setShiftTarget(null)}
                className="text-sm font-semibold text-gray-500 hover:text-gray-700 px-3 py-2"
              >
                Cancel
              </button>
              <button
                onClick={saveShifts}
                disabled={savingShifts}
                className="bg-gramsure-navy text-white text-sm font-semibold px-5 py-2 rounded-xl hover:bg-slate-800 disabled:opacity-50 transition-colors"
              >
                {savingShifts ? 'Saving...' : 'Save shifts'}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}

// NEW: small presentational wrapper for consistent card styling
function Panel({ title, right, className = '', children }) {
  return (
    <div className={`bg-white rounded-2xl shadow-sm border border-gray-100 p-5 ${className}`}>
      <div className="flex items-center justify-between mb-4">
        <h3 className="text-sm font-semibold text-gray-800">{title}</h3>
        {right}
      </div>
      {children}
    </div>
  );
}