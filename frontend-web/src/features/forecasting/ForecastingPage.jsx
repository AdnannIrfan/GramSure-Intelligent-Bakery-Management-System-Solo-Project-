import { useEffect, useMemo, useState } from 'react';
import apiClient from '../../services/apiClient';
import Card from '../../components/common/Card'; // NEW
import { DonutChart, HBarList } from '../../components/charts/DashboardCharts'; // NEW

export default function ForecastingPage() {
  const [forecasts, setForecasts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [generating, setGenerating] = useState(false);

  const tomorrow = new Date(Date.now() + 86400000).toISOString().split('T')[0];

  useEffect(() => {
    loadForecast();
  }, []);

  async function loadForecast() {
    setLoading(true);
    try {
      const { data } = await apiClient.get(`/forecast/${tomorrow}`);
      setForecasts(data.data);
    } catch (err) {
      console.error('Failed to load forecast:', err);
    } finally {
      setLoading(false);
    }
  }

  async function handleGenerate() {
    setGenerating(true);
    try {
      await apiClient.post('/forecast/generate');
      await loadForecast();
    } catch (err) {
      alert(err.response?.data?.message || 'Failed to generate forecast');
    } finally {
      setGenerating(false);
    }
  }

  function confidenceTone(confidence) {
    if (confidence === 'high') return 'text-[#16a34a] bg-[#16a34a]/10';
    if (confidence === 'low') return 'text-[#f97316] bg-[#f97316]/10';
    return 'text-gray-600 bg-gray-100';
  }

  /* ---------- NEW: derived chart data (display only) ---------- */

  const totalUnits = useMemo(
    () => forecasts.reduce((sum, f) => sum + (Number(f.recommended_quantity) || 0), 0),
    [forecasts]
  );

  const highCount = useMemo(() => forecasts.filter((f) => f.confidence === 'high').length, [forecasts]);
  const lowCount = useMemo(() => forecasts.filter((f) => f.confidence === 'low').length, [forecasts]);
  const mediumCount = forecasts.length - highCount - lowCount;

  const confidenceSegments = useMemo(
    () => [
      { label: 'High', value: highCount, color: '#16a34a' },
      { label: 'Medium', value: mediumCount, color: '#94a3b8' },
      { label: 'Low', value: lowCount, color: '#f97316' },
    ],
    [highCount, mediumCount, lowCount]
  );

  const confidenceColor = { high: '#16a34a', low: '#f97316' };

  const productBars = useMemo(
    () =>
      [...forecasts]
        .sort((a, b) => Number(b.recommended_quantity) - Number(a.recommended_quantity))
        .slice(0, 8)
        .map((f) => ({
          label: f.product_name,
          value: Number(f.recommended_quantity) || 0,
          display: `${Number(f.recommended_quantity) || 0} units`,
          color: confidenceColor[f.confidence] || '#1e293b',
        })),
    [forecasts]
  );

  const topProduct = productBars[0];

  const longestShare = (f) => {
    const max = Math.max(...forecasts.map((x) => Number(x.recommended_quantity) || 0), 1);
    return Math.max(((Number(f.recommended_quantity) || 0) / max) * 100, 4);
  };

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between gap-4">
          <div>
            <h1 className="text-2xl font-bold text-white">Demand Forecasting</h1>
            <p className="text-sm text-white/50 mt-1">AI-recommended production for {tomorrow}</p>
          </div>
          <button
            onClick={handleGenerate}
            disabled={generating}
            className="bg-gramsure-gold text-gramsure-navy px-4 py-2.5 rounded-xl text-sm font-semibold hover:opacity-90 active:scale-[0.98] transition-all disabled:opacity-50 flex items-center gap-2 shadow-lg shadow-black/10"
          >
            {generating && (
              <span className="w-3.5 h-3.5 border-2 border-gramsure-navy/30 border-t-gramsure-navy rounded-full animate-spin" />
            )}
            {generating ? 'Generating...' : "Generate Tomorrow's Forecast"}
          </button>
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {/* KPI cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          <Card title="Products Forecasted" value={forecasts.length} icon="box" />
          <Card title="Total Units Recommended" value={totalUnits} icon="chart" subtitle={`for ${tomorrow}`} />
          <Card
            title="High Confidence"
            value={highCount}
            icon="check"
            tone={highCount > 0 ? 'good' : 'default'}
            subtitle={forecasts.length ? `of ${forecasts.length} products` : undefined}
          />
          <Card
            title="Low Confidence"
            value={lowCount}
            icon="alert"
            tone={lowCount > 0 ? 'warn' : 'good'}
            subtitle={lowCount > 0 ? 'review these manually' : undefined}
          />
        </div>

        {/* Charts */}
        {!loading && forecasts.length > 0 && (
          <div className="grid grid-cols-1 lg:grid-cols-5 gap-6">
            <Panel
              title="Recommended Production by Product"
              className="lg:col-span-3"
              right={
                topProduct && (
                  <span className="text-[11px] text-gray-400">
                    Highest: <span className="font-semibold text-gray-600">{topProduct.label}</span>
                  </span>
                )
              }
            >
              <HBarList items={productBars} emptyText="No forecast yet" />
              <div className="flex items-center gap-4 mt-4 text-[11px] text-gray-400">
                <span className="flex items-center gap-1.5">
                  <span className="w-2 h-2 rounded-full bg-[#16a34a]" /> High confidence
                </span>
                <span className="flex items-center gap-1.5">
                  <span className="w-2 h-2 rounded-full bg-[#1e293b]" /> Medium
                </span>
                <span className="flex items-center gap-1.5">
                  <span className="w-2 h-2 rounded-full bg-[#f97316]" /> Low confidence
                </span>
              </div>
            </Panel>

            <Panel title="Forecast Confidence" className="lg:col-span-2">
              <div className="py-3">
                <DonutChart
                  centerValue={forecasts.length}
                  centerLabel="products"
                  segments={confidenceSegments}
                />
              </div>
            </Panel>
          </div>
        )}

        {/* Table */}
        <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
          <div className="px-5 py-4 border-b border-gray-50 flex items-center justify-between">
            <h3 className="text-sm font-semibold text-gray-800">
              Recommended Production — {tomorrow}
            </h3>
            {forecasts.length > 0 && (
              <span className="text-xs font-semibold text-gramsure-navy bg-gramsure-gold/20 px-2 py-0.5 rounded-full">
                {forecasts.length} product{forecasts.length !== 1 ? 's' : ''}
              </span>
            )}
          </div>

          {loading ? (
            <div className="p-6 space-y-3">
              {[...Array(4)].map((_, i) => (
                <div key={i} className="h-10 bg-gray-100 rounded-lg animate-pulse" />
              ))}
            </div>
          ) : (
            <div className="overflow-x-auto">
              <table className="w-full text-sm">
                <thead className="bg-gray-50/80 text-gray-500 text-xs uppercase tracking-wide">
                  <tr>
                    <th className="text-left px-5 py-3 font-semibold">Product</th>
                    <th className="text-left px-5 py-3 font-semibold">Recommended Qty</th>
                    <th className="text-left px-5 py-3 font-semibold">Share</th>
                    <th className="text-left px-5 py-3 font-semibold">Confidence</th>
                  </tr>
                </thead>
                <tbody>
                  {forecasts.map((f) => (
                    <tr key={f.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                      <td className="px-5 py-3 font-medium text-gray-800">{f.product_name}</td>
                      <td className="px-5 py-3 text-gray-600">{f.recommended_quantity} units</td>
                      <td className="px-5 py-3 w-48">
                        <div className="h-2 bg-gray-100 rounded-full overflow-hidden">
                          <div
                            className="h-full rounded-full bg-gramsure-navy transition-all duration-700"
                            style={{ width: `${longestShare(f)}%` }}
                          />
                        </div>
                      </td>
                      <td className="px-5 py-3">
                        <span className={`inline-block px-2.5 py-1 rounded-full text-xs font-semibold capitalize ${confidenceTone(f.confidence)}`}>
                          {f.confidence}
                        </span>
                      </td>
                    </tr>
                  ))}
                  {forecasts.length === 0 && (
                    <tr>
                      <td colSpan={4} className="px-5 py-12 text-center text-gray-400">
                        No forecast generated yet. Click the button above.
                      </td>
                    </tr>
                  )}
                </tbody>
              </table>
            </div>
          )}
        </div>
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