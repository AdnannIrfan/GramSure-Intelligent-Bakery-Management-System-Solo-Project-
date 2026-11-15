const TONES = {
  default: { accent: 'bg-gray-100', iconColor: 'text-gray-500', bar: 'bg-gray-200', spark: '#64748b', icon: 'chart' },
  good: { accent: 'bg-[#16a34a]/10', iconColor: 'text-[#16a34a]', bar: 'bg-[#16a34a]', spark: '#16a34a', icon: 'check' },
  warn: { accent: 'bg-[#f97316]/10', iconColor: 'text-[#f97316]', bar: 'bg-[#f97316]', spark: '#f97316', icon: 'alert' },
  critical: { accent: 'bg-[#dc2626]/10', iconColor: 'text-[#dc2626]', bar: 'bg-[#dc2626]', spark: '#dc2626', icon: 'shield' },
};

const ICON_PATHS = {
  chart: 'M3 3v18h18 M7 14l4-4 4 4 5-6',
  check: 'M20 6L9 17l-5-5',
  alert: 'M12 9v4 M12 17h.01 M10.29 3.86L1.82 18a2 2 0 001.71 3h16.94a2 2 0 001.71-3L13.71 3.86a2 2 0 00-3.42 0z',
  shield: 'M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z M12 8v4 M12 16h.01',
  money: 'M12 1v22 M17 5H9.5a3.5 3.5 0 000 7h5a3.5 3.5 0 010 7H6',
  box: 'M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z',
  users: 'M17 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2 M9 11a4 4 0 100-8 4 4 0 000 8z',
  cart: 'M9 21a1 1 0 100-2 1 1 0 000 2z M20 21a1 1 0 100-2 1 1 0 000 2z M1 1h4l2.68 13.39a2 2 0 002 1.61h9.72a2 2 0 002-1.61L23 6H6',
  heart: 'M20.84 4.61a5.5 5.5 0 00-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 00-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 000-7.78z',
};

function Sparkline({ data, color }) {
  if (!data || data.length < 2) return null;
  const W = 100;
  const H = 28;
  const max = Math.max(...data);
  const min = Math.min(...data);
  const range = max - min || 1;
  const pts = data.map((v, i) => [(i / (data.length - 1)) * W, H - 3 - ((v - min) / range) * (H - 6)]);
  const line = pts.map((p, i) => `${i === 0 ? 'M' : 'L'}${p[0].toFixed(1)},${p[1].toFixed(1)}`).join(' ');
  const gid = `spark-${color.replace('#', '')}`;

  return (
    <svg viewBox={`0 0 ${W} ${H}`} preserveAspectRatio="none" className="w-full h-7 mt-3">
      <defs>
        <linearGradient id={gid} x1="0" y1="0" x2="0" y2="1">
          <stop offset="0%" stopColor={color} stopOpacity="0.25" />
          <stop offset="100%" stopColor={color} stopOpacity="0" />
        </linearGradient>
      </defs>
      <path d={`${line} L${W},${H} L0,${H} Z`} fill={`url(#${gid})`} />
      <path d={line} fill="none" stroke={color} strokeWidth="1.8" strokeLinejoin="round" vectorEffect="non-scaling-stroke" />
    </svg>
  );
}

/**
 * Existing props: title, value, subtitle, tone, className
 * Optional new props:
 *   icon   - 'chart' | 'check' | 'alert' | 'shield' | 'money' | 'box' | 'users' | 'cart' | 'heart'
 *   trend  - number (percent change). Shows a green/red arrow badge.
 *   spark  - array of numbers. Shows a small trend line at the bottom.
 */
export default function Card({
  title,
  value,
  subtitle,
  tone = 'default',
  className = '',
  icon,
  trend,
  spark,
}) {
  const style = TONES[tone] || TONES.default;
  const iconName = icon && ICON_PATHS[icon] ? icon : style.icon;
  const hasTrend = typeof trend === 'number' && !Number.isNaN(trend);

  return (
    <div
      className={`relative overflow-hidden rounded-2xl shadow-sm border border-gray-100 p-4 bg-white text-gray-900 hover:shadow-md hover:-translate-y-0.5 transition-all duration-200 ${className}`}
    >
      {tone !== 'default' && <span className={`absolute left-0 top-0 bottom-0 w-1 ${style.bar}`} />}

      <div className="flex items-start justify-between gap-3">
        <p className="text-xs font-semibold uppercase tracking-wide text-gray-400">{title}</p>
        <span className={`w-8 h-8 rounded-xl flex items-center justify-center shrink-0 ${style.accent} ${style.iconColor}`}>
          <svg
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            strokeWidth="2"
            strokeLinecap="round"
            strokeLinejoin="round"
            className="w-4 h-4"
            aria-hidden="true"
          >
            <path d={ICON_PATHS[iconName]} />
          </svg>
        </span>
      </div>

      <div className="flex items-end gap-2 mt-2">
        <p className="text-2xl font-bold leading-none">{value}</p>
        {hasTrend && (
          <span
            className={`mb-0.5 text-[11px] font-semibold px-1.5 py-0.5 rounded-full ${
              trend >= 0 ? 'bg-green-50 text-green-600' : 'bg-red-50 text-red-600'
            }`}
          >
            {trend >= 0 ? '▲' : '▼'} {Math.abs(trend).toFixed(1)}%
          </span>
        )}
      </div>

      {subtitle && <p className="text-xs mt-1.5 text-gray-400">{subtitle}</p>}
      <Sparkline data={spark} color={style.spark} />
    </div>
  );
}