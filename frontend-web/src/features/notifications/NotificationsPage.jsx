import { useEffect, useMemo, useState } from 'react';
import apiClient from '../../services/apiClient';
import Badge from '../../components/common/Badge';
import Card from '../../components/common/Card'; // NEW
import { DonutChart, ColumnChart } from '../../components/charts/DashboardCharts'; // NEW

const MONTH_SHORT = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

export default function NotificationsPage() {
  const [notifications, setNotifications] = useState([]);
  const [loading, setLoading] = useState(true);

  // NEW: UI-only state for filtering the list
  const [readFilter, setReadFilter] = useState('all'); // 'all' | 'unread'
  const [typeFilter, setTypeFilter] = useState('all');

  useEffect(() => {
    loadNotifications();
  }, []);

  async function loadNotifications() {
    setLoading(true);
    try {
      const { data } = await apiClient.get('/notifications');
      setNotifications(data.data);
    } catch (err) {
      console.error('Failed to load notifications:', err);
    } finally {
      setLoading(false);
    }
  }

  async function handleMarkAllRead() {
    await apiClient.patch('/notifications/mark-all-read');
    loadNotifications();
  }

  function typeTone(type) {
    if (type === 'fraud') return 'critical';
    if (type === 'stock') return 'warn';
    if (type === 'summary') return 'good';
    return 'neutral';
  }

  const unreadCount = notifications.filter((n) => !n.is_read).length;

  /* ---------- NEW: derived chart data (display only) ---------- */

  const typeColors = { fraud: '#dc2626', stock: '#f97316', summary: '#16a34a' };

  const countType = (t) => notifications.filter((n) => n.type === t).length;

  const typeSegments = useMemo(() => {
    const map = {};
    notifications.forEach((n) => {
      const t = n.type || 'other';
      map[t] = (map[t] || 0) + 1;
    });
    return Object.entries(map).map(([type, value]) => ({
      label: type.charAt(0).toUpperCase() + type.slice(1),
      value,
      color: typeColors[type] || '#94a3b8',
    }));
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [notifications]);

  const dailyCounts = useMemo(() => {
    const map = {};
    notifications.forEach((n) => {
      const d = new Date(n.created_at);
      if (Number.isNaN(d.getTime())) return;
      const key = `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`;
      if (!map[key]) map[key] = { key, label: `${d.getDate()} ${MONTH_SHORT[d.getMonth()]}`, value: 0 };
      map[key].value += 1;
    });
    return Object.values(map)
      .sort((a, b) => a.key.localeCompare(b.key))
      .slice(-7);
  }, [notifications]);

  const typeOptions = useMemo(
    () => [...new Set(notifications.map((n) => n.type).filter(Boolean))],
    [notifications]
  );

  const visibleNotifications = useMemo(
    () =>
      notifications.filter((n) => {
        const matchesRead = readFilter === 'all' || !n.is_read;
        const matchesType = typeFilter === 'all' || n.type === typeFilter;
        return matchesRead && matchesType;
      }),
    [notifications, readFilter, typeFilter]
  );

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between gap-4">
          <div>
            <h1 className="text-2xl font-bold text-white">Notification Center</h1>
            <p className="text-sm text-white/50 mt-1">
              {unreadCount > 0 ? `${unreadCount} unread` : 'All caught up'}
            </p>
          </div>
          <button
            onClick={handleMarkAllRead}
            className="bg-white/10 backdrop-blur-sm text-white px-4 py-2 rounded-xl text-sm font-medium border border-white/10 hover:bg-white/20 transition-colors"
          >
            Mark all as read
          </button>
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {/* KPI cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          <Card title="Total Notifications" value={notifications.length} icon="chart" />
          <Card
            title="Unread"
            value={unreadCount}
            icon="alert"
            tone={unreadCount > 0 ? 'warn' : 'good'}
            subtitle={unreadCount > 0 ? 'need your attention' : 'all caught up'}
          />
          <Card
            title="Fraud Alerts"
            value={countType('fraud')}
            icon="shield"
            tone={countType('fraud') > 0 ? 'critical' : 'good'}
          />
          <Card
            title="Stock Alerts"
            value={countType('stock')}
            icon="box"
            tone={countType('stock') > 0 ? 'warn' : 'good'}
          />
        </div>

        {/* Charts */}
        {!loading && notifications.length > 0 && (
          <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
            <Panel title="By Type">
              <DonutChart centerValue={notifications.length} centerLabel="total" segments={typeSegments} size={130} />
            </Panel>

            <Panel title="Read vs Unread">
              <DonutChart
                centerValue={unreadCount}
                centerLabel="unread"
                size={130}
                segments={[
                  { label: 'Unread', value: unreadCount, color: '#f59e0b' },
                  { label: 'Read', value: notifications.length - unreadCount, color: '#94a3b8' },
                ]}
              />
            </Panel>

            <Panel title="Notifications per Day (last 7 days with activity)">
              <ColumnChart data={dailyCounts} prefix="" />
            </Panel>
          </div>
        )}

        {/* Filters */}
        {!loading && notifications.length > 0 && (
          <div className="flex flex-wrap items-center justify-between gap-3">
            <div className="inline-flex items-center gap-1 bg-white p-1 rounded-2xl border border-gray-100 shadow-sm">
              {[
                { key: 'all', label: `All (${notifications.length})` },
                { key: 'unread', label: `Unread (${unreadCount})` },
              ].map((t) => (
                <button
                  key={t.key}
                  onClick={() => setReadFilter(t.key)}
                  className={`text-sm font-semibold px-4 py-2 rounded-xl transition-all ${
                    readFilter === t.key
                      ? 'bg-gramsure-navy text-white shadow-sm'
                      : 'text-gray-500 hover:text-gray-800 hover:bg-gray-50'
                  }`}
                >
                  {t.label}
                </button>
              ))}
            </div>

            <select
              value={typeFilter}
              onChange={(e) => setTypeFilter(e.target.value)}
              className="px-3 py-2 text-sm bg-white border border-gray-200 rounded-xl capitalize focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent"
            >
              <option value="all">All types</option>
              {typeOptions.map((t) => (
                <option key={t} value={t}>
                  {t}
                </option>
              ))}
            </select>
          </div>
        )}

        {/* List */}
        {loading ? (
          <div className="space-y-2">
            {[...Array(4)].map((_, i) => (
              <div key={i} className="h-16 bg-white rounded-2xl border border-gray-100 animate-pulse" />
            ))}
          </div>
        ) : (
          <div className="space-y-2">
            {visibleNotifications.map((n) => (
              <div
                key={n.id}
                className={`bg-white rounded-2xl border border-gray-100 shadow-sm p-4 flex justify-between items-start gap-4 hover:shadow-md transition-shadow ${
                  !n.is_read ? 'border-l-4 border-l-gramsure-gold' : ''
                }`}
              >
                <div className="min-w-0">
                  <div className="flex flex-wrap items-center gap-2 mb-1.5">
                    <Badge tone={typeTone(n.type)} dot size="sm">{n.type}</Badge>
                    <p className="font-semibold text-sm text-gray-800">{n.title}</p>
                    {!n.is_read && <span className="w-1.5 h-1.5 rounded-full bg-gramsure-gold shrink-0" />}
                  </div>
                  <p className="text-sm text-gray-500">{n.message}</p>
                </div>
                <span className="text-xs text-gray-400 whitespace-nowrap shrink-0">
                  {new Date(n.created_at).toLocaleString()}
                </span>
              </div>
            ))}
            {visibleNotifications.length === 0 && (
              <div className="bg-white rounded-2xl border border-gray-100 py-16 text-center">
                <p className="text-sm text-gray-400">
                  {notifications.length === 0 ? 'No notifications yet.' : 'No notifications match your filters.'}
                </p>
              </div>
            )}
          </div>
        )}
      </div>
    </div>
  );
}

// NEW: small presentational wrapper for consistent card styling
function Panel({ title, right, className = '', children }) {
  return (
    <div className={`bg-white rounded-2xl shadow-sm border border-gray-100 p-5 ${className}`}>
      <div className="flex items-center justify-between mb-4 gap-3">
        <h3 className="text-sm font-semibold text-gray-800">{title}</h3>
        {right}
      </div>
      {children}
    </div>
  );
}