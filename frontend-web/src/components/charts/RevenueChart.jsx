import {
  BarChart,
  Bar,
  XAxis,
  YAxis,
  Tooltip,
  ResponsiveContainer,
  CartesianGrid,
  Cell,
  ReferenceLine,
} from 'recharts';

const compact = (v) => {
  const n = Number(v) || 0;
  if (n >= 1_000_000) return `${(n / 1_000_000).toFixed(1)}M`;
  if (n >= 1_000) return `${Math.round(n / 1_000)}k`;
  return n;
};

export default function RevenueChart({ data = [] }) {
  const latest = data[data.length - 1]?.actual ?? 0;
  const previous = data.length > 1 ? data[data.length - 2].actual : null;
  const change = previous ? ((latest - previous) / previous) * 100 : null;

  const total = data.reduce((s, d) => s + (d.actual || 0), 0);
  const average = data.length ? Math.round(total / data.length) : 0;
  const best = data.reduce((b, d) => (d.actual > (b?.actual ?? -1) ? d : b), null);

  return (
    <div className="bg-white rounded-2xl shadow-sm border border-gray-100 p-5 h-full flex flex-col">
      {/* Header */}
      <div className="flex items-start justify-between mb-4">
        <div>
          <h3 className="text-sm font-semibold text-gray-800">Monthly Revenue</h3>
          <p className="text-xs text-gray-400 mt-0.5">PKR, last 6 months</p>
        </div>
        {data.length > 0 && (
          <div className="text-right">
            <p className="text-xl font-bold text-gramsure-navy">Rs. {latest.toLocaleString()}</p>
            <div className="flex items-center justify-end gap-1.5 mt-0.5">
              <span className="text-xs text-gray-400">this month</span>
              {change !== null && (
                <span
                  className={`text-[11px] font-semibold px-1.5 py-0.5 rounded-full ${
                    change >= 0 ? 'bg-green-50 text-green-600' : 'bg-red-50 text-red-600'
                  }`}
                >
                  {change >= 0 ? '▲' : '▼'} {Math.abs(change).toFixed(1)}%
                </span>
              )}
            </div>
          </div>
        )}
      </div>

      {data.length === 0 ? (
        <div className="h-[260px] flex flex-col items-center justify-center text-center gap-2">
          <span className="text-2xl">📊</span>
          <p className="text-sm text-gray-400">No revenue data yet</p>
        </div>
      ) : (
        <>
          <ResponsiveContainer width="100%" height={240}>
            <BarChart data={data} margin={{ top: 12, right: 8, left: -8, bottom: 0 }}>
              <defs>
                <linearGradient id="revNavy" x1="0" y1="0" x2="0" y2="1">
                  <stop offset="0%" stopColor="#334155" />
                  <stop offset="100%" stopColor="#0f172a" />
                </linearGradient>
                <linearGradient id="revGold" x1="0" y1="0" x2="0" y2="1">
                  <stop offset="0%" stopColor="#fbbf24" />
                  <stop offset="100%" stopColor="#f59e0b" />
                </linearGradient>
              </defs>
              <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#f1f2f4" />
              <XAxis dataKey="month" tick={{ fontSize: 12, fill: '#9ca3af' }} axisLine={false} tickLine={false} />
              <YAxis
                tick={{ fontSize: 12, fill: '#9ca3af' }}
                axisLine={false}
                tickLine={false}
                tickFormatter={compact}
              />
              <Tooltip
                cursor={{ fill: '#fffbeb' }}
                contentStyle={{
                  borderRadius: 10,
                  border: '1px solid #eee',
                  fontSize: 13,
                  boxShadow: '0 4px 12px rgba(0,0,0,0.08)',
                }}
                formatter={(value) => [`Rs. ${value.toLocaleString()}`, 'Revenue']}
              />
              <ReferenceLine
                y={average}
                stroke="#9ca3af"
                strokeDasharray="4 4"
                label={{ value: 'avg', position: 'right', fontSize: 10, fill: '#9ca3af' }}
              />
              <Bar dataKey="actual" radius={[8, 8, 0, 0]} name="Revenue" maxBarSize={48}>
                {data.map((entry, index) => (
                  <Cell
                    key={`cell-${index}`}
                    fill={index === data.length - 1 ? 'url(#revGold)' : 'url(#revNavy)'}
                  />
                ))}
              </Bar>
            </BarChart>
          </ResponsiveContainer>

          {/* Summary strip */}
          <div className="grid grid-cols-3 gap-3 mt-4 pt-4 border-t border-gray-100">
            <div>
              <p className="text-[11px] text-gray-400">6-month total</p>
              <p className="text-sm font-semibold text-gray-800">Rs. {total.toLocaleString()}</p>
            </div>
            <div>
              <p className="text-[11px] text-gray-400">Monthly average</p>
              <p className="text-sm font-semibold text-gray-800">Rs. {average.toLocaleString()}</p>
            </div>
            <div>
              <p className="text-[11px] text-gray-400">Best month</p>
              <p className="text-sm font-semibold text-gray-800">{best?.month ?? '—'}</p>
            </div>
          </div>
        </>
      )}
    </div>
  );
}