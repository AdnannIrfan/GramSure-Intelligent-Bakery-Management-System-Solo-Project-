import { useEffect, useMemo, useState } from 'react';
import apiClient from '../../services/apiClient';
import Badge from '../../components/common/Badge';
import Card from '../../components/common/Card'; // NEW
import { DonutChart, HBarList, ColumnChart } from '../../components/charts/DashboardCharts'; // NEW

export default function FraudAlertsPage() {
  const [alerts, setAlerts] = useState([]);
  const [leaderboard, setLeaderboard] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadData();
  }, []);

  async function loadData() {
    setLoading(true);
    try {
      const [alertsRes, leaderboardRes] = await Promise.all([
        apiClient.get('/fraud/alerts?status=open'),
        apiClient.get('/fraud/suspicion-leaderboard'),
      ]);
      setAlerts(alertsRes.data.data);
      setLeaderboard(leaderboardRes.data.data);
    } catch (err) {
      console.error('Failed to load fraud data:', err);
    } finally {
      setLoading(false);
    }
  }

  async function handleReview(id) {
    await apiClient.patch(`/fraud/alerts/${id}/review`);
    loadData();
  }

  async function handleDismiss(id) {
    await apiClient.patch(`/fraud/alerts/${id}/dismiss`);
    loadData();
  }

  /* ---------- NEW: derived chart data (display only) ---------- */

  // Same rule as the badge in the table: 70 and above is high risk
  const highRiskCount = useMemo(() => alerts.filter((a) => Number(a.risk_score) >= 70).length, [alerts]);
  const mediumRiskCount = alerts.length - highRiskCount;

  const avgRisk = useMemo(() => {
    if (alerts.length === 0) return 0;
    return alerts.reduce((s, a) => s + (Number(a.risk_score) || 0), 0) / alerts.length;
  }, [alerts]);

  const riskSegments = useMemo(
    () => [
      { label: 'High risk (70+)', value: highRiskCount, color: '#dc2626' },
      { label: 'Medium risk', value: mediumRiskCount, color: '#f97316' },
    ],
    [highRiskCount, mediumRiskCount]
  );

  const typeBars = useMemo(() => {
    const map = {};
    alerts.forEach((a) => {
      const t = String(a.alert_type || 'unknown').replace(/_/g, ' ');
      map[t] = (map[t] || 0) + 1;
    });
    return Object.entries(map)
      .sort((a, b) => b[1] - a[1])
      .slice(0, 6)
      .map(([label, value], i) => ({
        label: label.charAt(0).toUpperCase() + label.slice(1),
        value,
        display: `${value} alert${value !== 1 ? 's' : ''}`,
        color: i === 0 ? '#dc2626' : '#1e293b',
      }));
  }, [alerts]);

  // How many alerts fall into each risk score range
  const riskBuckets = useMemo(() => {
    const buckets = [
      { label: '0-39', value: 0 },
      { label: '40-59', value: 0 },
      { label: '60-79', value: 0 },
      { label: '80-100', value: 0 },
    ];
    alerts.forEach((a) => {
      const r = Number(a.risk_score) || 0;
      if (r < 40) buckets[0].value += 1;
      else if (r < 60) buckets[1].value += 1;
      else if (r < 80) buckets[2].value += 1;
      else buckets[3].value += 1;
    });
    return buckets;
  }, [alerts]);

  const topSuspects = useMemo(
    () =>
      [...leaderboard]
        .sort((a, b) => parseFloat(b.score) - parseFloat(a.score))
        .slice(0, 6)
        .map((s, i) => ({
          label: s.name,
          value: parseFloat(s.score) || 0,
          display: `${(parseFloat(s.score) || 0).toFixed(0)}/100`,
          color: i === 0 ? '#dc2626' : '#f59e0b',
        })),
    [leaderboard]
  );

  const flaggedBatches = useMemo(
    () => leaderboard.reduce((sum, s) => sum + Number(s.flagged_count || 0), 0),
    [leaderboard]
  );

  const scoreTone = (score) => {
    const n = parseFloat(score) || 0;
    if (n >= 70) return '#dc2626';
    if (n >= 40) return '#f97316';
    return '#16a34a';
  };

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between gap-4">
          <div>
            <h1 className="text-2xl font-bold text-white">AI Fraud Detection & Anomaly Engine</h1>
            <p className="text-sm text-white/50 mt-1">{alerts.length} open alert{alerts.length !== 1 ? 's' : ''}</p>
          </div>
          {alerts.length > 0 && (
            <div className="hidden sm:flex items-center gap-2 bg-white/10 backdrop-blur-sm px-4 py-2 rounded-xl border border-white/10">
              <span className="w-2 h-2 rounded-full bg-[#dc2626] animate-pulse" />
              <span className="text-sm text-white/80">{alerts.length} needs review</span>
            </div>
          )}
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {loading ? (
          <div className="bg-white rounded-2xl shadow-sm border border-gray-100 p-6 space-y-3">
            {[...Array(4)].map((_, i) => (
              <div key={i} className="h-10 bg-gray-100 rounded-lg animate-pulse" />
            ))}
          </div>
        ) : (
          <>
            {/* KPI cards */}
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
              <Card
                title="Open Alerts"
                value={alerts.length}
                icon="shield"
                tone={alerts.length > 0 ? 'critical' : 'good'}
                subtitle={alerts.length > 0 ? 'waiting for review' : 'all clear'}
              />
              <Card
                title="High Risk"
                value={highRiskCount}
                icon="alert"
                tone={highRiskCount > 0 ? 'critical' : 'good'}
                subtitle="risk score 70 or more"
              />
              <Card
                title="Average Risk Score"
                value={alerts.length ? avgRisk.toFixed(0) : '—'}
                icon="chart"
                tone={avgRisk >= 70 ? 'critical' : avgRisk >= 40 ? 'warn' : 'good'}
              />
              <Card
                title="Batches Flagged"
                value={flaggedBatches}
                icon="box"
                tone={flaggedBatches > 0 ? 'warn' : 'good'}
                subtitle="across all staff"
              />
            </div>

            {/* Charts row 1 */}
            <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
              <Panel title="Alerts by Risk Level">
                {alerts.length === 0 ? (
                  <EmptyState text="No open alerts" />
                ) : (
                  <DonutChart centerValue={alerts.length} centerLabel="open" segments={riskSegments} size={130} />
                )}
              </Panel>

              <Panel title="Risk Score Distribution">
                {alerts.length === 0 ? (
                  <EmptyState text="No open alerts" />
                ) : (
                  <ColumnChart data={riskBuckets} prefix="" color="#1e293b" highlightColor="#dc2626" />
                )}
              </Panel>

              <Panel title="Alerts by Type">
                <HBarList items={typeBars} emptyText="No open alerts" />
              </Panel>
            </div>

            {/* Open alerts table */}
            <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
              <div className="px-5 py-4 border-b border-gray-50 flex items-center justify-between">
                <h3 className="text-sm font-semibold text-gray-800">Open Alerts</h3>
                {alerts.length > 0 && (
                  <span className="text-xs font-semibold text-[#dc2626] bg-[#dc2626]/10 px-2 py-0.5 rounded-full">
                    {alerts.length}
                  </span>
                )}
              </div>
              <div className="overflow-x-auto">
                <table className="w-full text-sm">
                  <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                    <tr>
                      <th className="text-left px-5 py-3 font-semibold">Type</th>
                      <th className="text-left px-5 py-3 font-semibold">Risk Score</th>
                      <th className="text-left px-5 py-3 font-semibold">Details</th>
                      <th className="text-left px-5 py-3 font-semibold">Actions</th>
                    </tr>
                  </thead>
                  <tbody>
                    {alerts.map((a) => (
                      <tr key={a.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                        <td className="px-5 py-3 capitalize text-gray-700">{a.alert_type.replace('_', ' ')}</td>
                        <td className="px-5 py-3">
                          <Badge tone={a.risk_score >= 70 ? 'critical' : 'warn'} dot>{a.risk_score}</Badge>
                        </td>
                        <td className="px-5 py-3 text-gray-600 max-w-md">{a.details}</td>
                        <td className="px-5 py-3">
                          <div className="flex items-center gap-2">
                            <button
                              onClick={() => handleReview(a.id)}
                              className="text-xs font-semibold text-gramsure-navy bg-gramsure-navy/5 hover:bg-gramsure-navy/10 px-2.5 py-1 rounded-lg transition-colors"
                            >
                              Review
                            </button>
                            <button
                              onClick={() => handleDismiss(a.id)}
                              className="text-xs font-semibold text-gray-500 bg-gray-100 hover:bg-gray-200 px-2.5 py-1 rounded-lg transition-colors"
                            >
                              Dismiss
                            </button>
                          </div>
                        </td>
                      </tr>
                    ))}
                    {alerts.length === 0 && (
                      <tr>
                        <td colSpan={4} className="px-5 py-12 text-center text-gray-400">
                          No open fraud alerts. All clear!
                        </td>
                      </tr>
                    )}
                  </tbody>
                </table>
              </div>
            </div>

            {/* Leaderboard: chart + table */}
            <div className="grid grid-cols-1 lg:grid-cols-5 gap-6">
              <Panel title="Top Suspicion Scores" className="lg:col-span-2">
                <HBarList items={topSuspects} emptyText="No suspicion data yet" />
              </Panel>

              <div className="lg:col-span-3 bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
                <div className="px-5 py-4 border-b border-gray-50">
                  <h3 className="text-sm font-semibold text-gray-800">Staff Suspicion Leaderboard</h3>
                </div>
                <div className="overflow-x-auto">
                  <table className="w-full text-sm">
                    <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                      <tr>
                        <th className="text-left px-5 py-3 font-semibold">Staff</th>
                        <th className="text-left px-5 py-3 font-semibold">Suspicion Score</th>
                        <th className="text-left px-5 py-3 font-semibold">Batches Flagged</th>
                      </tr>
                    </thead>
                    <tbody>
                      {leaderboard.map((s) => (
                        <tr key={s.staff_id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                          <td className="px-5 py-3 font-medium text-gray-800">{s.name}</td>
                          <td className="px-5 py-3">
                            <div className="flex items-center gap-2">
                              <div className="w-24 h-1.5 bg-gray-100 rounded-full overflow-hidden">
                                <div
                                  className="h-full rounded-full transition-all duration-700"
                                  style={{
                                    width: `${Math.min(100, parseFloat(s.score))}%`,
                                    backgroundColor: scoreTone(s.score),
                                  }}
                                />
                              </div>
                              <span className="text-gray-600">{parseFloat(s.score).toFixed(0)}/100</span>
                            </div>
                          </td>
                          <td className="px-5 py-3 text-gray-600">{s.flagged_count} / {s.batch_count}</td>
                        </tr>
                      ))}
                      {leaderboard.length === 0 && (
                        <tr>
                          <td colSpan={3} className="px-5 py-12 text-center text-gray-400">
                            No suspicion data yet.
                          </td>
                        </tr>
                      )}
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </>
        )}
      </div>
    </div>
  );
}

// NEW: small presentational helpers
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

function EmptyState({ text }) {
  return <p className="text-sm text-gray-400 text-center py-10">{text}</p>;
}