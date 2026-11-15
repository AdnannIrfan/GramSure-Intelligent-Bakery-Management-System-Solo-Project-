import { useState } from 'react';

const fmt = (n) => Number(n || 0).toLocaleString('en-US', { maximumFractionDigits: 0 });

/* ---------- Area / line trend chart ---------- */
export function AreaTrendChart({ data, id = 'area', color = '#0f2a4a', height = 220, prefix = 'Rs. ' }) {
  const [hover, setHover] = useState(null);

  if (!data || data.length < 2) {
    return <EmptyChart height={height} />;
  }

  const W = 600;
  const H = 200;
  const max = Math.max(...data.map((d) => d.value), 1);
  const pts = data.map((d, i) => ({
    x: (i / (data.length - 1)) * W,
    y: H - (d.value / max) * (H - 16) - 4,
  }));
  const line = pts.map((p, i) => `${i === 0 ? 'M' : 'L'}${p.x},${p.y}`).join(' ');
  const area = `${line} L${W},${H} L0,${H} Z`;

  function onMove(e) {
    const rect = e.currentTarget.getBoundingClientRect();
    const ratio = (e.clientX - rect.left) / rect.width;
    setHover(Math.min(data.length - 1, Math.max(0, Math.round(ratio * (data.length - 1)))));
  }

  return (
    <div className="relative" style={{ height }} onMouseMove={onMove} onMouseLeave={() => setHover(null)}>
      <svg viewBox={`0 0 ${W} ${H}`} preserveAspectRatio="none" className="w-full h-full">
        <defs>
          <linearGradient id={`grad-${id}`} x1="0" y1="0" x2="0" y2="1">
            <stop offset="0%" stopColor={color} stopOpacity="0.25" />
            <stop offset="100%" stopColor={color} stopOpacity="0" />
          </linearGradient>
        </defs>
        {[0.25, 0.5, 0.75].map((g) => (
          <line key={g} x1="0" x2={W} y1={H * g} y2={H * g} stroke="#e5e7eb" strokeDasharray="4 4" vectorEffect="non-scaling-stroke" />
        ))}
        <path d={area} fill={`url(#grad-${id})`} />
        <path d={line} fill="none" stroke={color} strokeWidth="2.5" strokeLinejoin="round" vectorEffect="non-scaling-stroke" />
        {hover !== null && (
          <line x1={pts[hover].x} x2={pts[hover].x} y1="0" y2={H} stroke={color} strokeOpacity="0.4" vectorEffect="non-scaling-stroke" />
        )}
      </svg>
      {hover !== null && (
        <div
          className="absolute -translate-x-1/2 -top-2 bg-gray-900 text-white text-xs px-2.5 py-1.5 rounded-lg shadow-lg pointer-events-none whitespace-nowrap"
          style={{ left: `${(hover / (data.length - 1)) * 100}%` }}
        >
          <div className="text-white/60">{data[hover].label}</div>
          <div className="font-semibold">{prefix}{fmt(data[hover].value)}</div>
        </div>
      )}
      <div className="absolute -bottom-5 left-0 right-0 flex justify-between text-[11px] text-gray-400">
        <span>{data[0].label}</span>
        <span>{data[data.length - 1].label}</span>
      </div>
    </div>
  );
}

/* ---------- Vertical column chart ---------- */
export function ColumnChart({ data, color = '#0f2a4a', highlightColor = '#d4a84b', height = 180, prefix = 'Rs. ' }) {
  if (!data || data.length === 0 || data.every((d) => d.value === 0)) {
    return <EmptyChart height={height} />;
  }
  const max = Math.max(...data.map((d) => d.value), 1);
  const topIndex = data.findIndex((d) => d.value === max);

  return (
    <div className="flex items-end justify-between gap-2" style={{ height }}>
      {data.map((d, i) => (
        <div key={d.label} className="flex-1 flex flex-col items-center justify-end h-full group">
          <span className="text-[11px] text-gray-500 opacity-0 group-hover:opacity-100 transition mb-1 whitespace-nowrap">
            {prefix}{fmt(d.value)}
          </span>
          <div
            className="w-full rounded-t-lg transition-all duration-500 hover:opacity-80"
            style={{
              height: `${Math.max((d.value / max) * 100 - 12, 2)}%`,
              backgroundColor: i === topIndex ? highlightColor : color,
            }}
          />
          <span className="text-[11px] text-gray-400 mt-2">{d.label}</span>
        </div>
      ))}
    </div>
  );
}

/* ---------- Horizontal bar list ---------- */
export function HBarList({ items, emptyText = 'No data' }) {
  if (!items || items.length === 0) {
    return <p className="text-sm text-gray-400 text-center py-8">{emptyText}</p>;
  }
  const max = Math.max(...items.map((i) => i.value), 1);
  return (
    <ul className="space-y-3">
      {items.map((item) => (
        <li key={item.label}>
          <div className="flex justify-between text-xs mb-1">
            <span className="text-gray-700 font-medium truncate pr-2">{item.label}</span>
            <span className="text-gray-400 whitespace-nowrap">{item.display}</span>
          </div>
          <div className="h-2 bg-gray-100 rounded-full overflow-hidden">
            <div
              className="h-full rounded-full transition-all duration-700"
              style={{ width: `${Math.max((item.value / max) * 100, 4)}%`, backgroundColor: item.color || '#f59e0b' }}
            />
          </div>
        </li>
      ))}
    </ul>
  );
}

/* ---------- Donut chart ---------- */
export function DonutChart({ segments, centerValue, centerLabel, size = 150 }) {
  const r = 40;
  const C = 2 * Math.PI * r;
  const total = segments.reduce((s, x) => s + x.value, 0);
  let offset = 0;

  return (
    <div className="flex items-center gap-5">
      <div className="relative shrink-0" style={{ width: size, height: size }}>
        <svg viewBox="0 0 100 100" className="w-full h-full -rotate-90">
          <circle cx="50" cy="50" r={r} fill="none" stroke="#f3f4f6" strokeWidth="12" />
          {total > 0 &&
            segments.map((s) => {
              const len = (s.value / total) * C;
              const el = (
                <circle
                  key={s.label}
                  cx="50"
                  cy="50"
                  r={r}
                  fill="none"
                  stroke={s.color}
                  strokeWidth="12"
                  strokeDasharray={`${len} ${C - len}`}
                  strokeDashoffset={-offset}
                  className="transition-all duration-700"
                />
              );
              offset += len;
              return el;
            })}
        </svg>
        <div className="absolute inset-0 flex flex-col items-center justify-center">
          <span className="text-2xl font-bold text-gray-800">{centerValue}</span>
          <span className="text-[11px] text-gray-400">{centerLabel}</span>
        </div>
      </div>
      <ul className="space-y-2 text-sm">
        {segments.map((s) => (
          <li key={s.label} className="flex items-center gap-2">
            <span className="w-2.5 h-2.5 rounded-full" style={{ backgroundColor: s.color }} />
            <span className="text-gray-600">{s.label}</span>
            <span className="font-semibold text-gray-800">{s.value}</span>
          </li>
        ))}
      </ul>
    </div>
  );
}

/* ---------- Semi-circle gauge ---------- */
export function GaugeChart({ value, label }) {
  const has = typeof value === 'number' && !Number.isNaN(value);
  const pct = has ? Math.min(Math.max(value, 0), 100) : 0;
  const color = pct >= 70 ? '#16a34a' : pct >= 40 ? '#f59e0b' : '#dc2626';
  const arc = Math.PI * 80; // half circle length (r = 80)

  return (
    <div className="flex flex-col items-center">
      <div className="relative w-56">
        <svg viewBox="0 0 200 110" className="w-full">
          <path d="M20 100 A80 80 0 0 1 180 100" fill="none" stroke="#f3f4f6" strokeWidth="16" strokeLinecap="round" />
          {has && (
            <path
              d="M20 100 A80 80 0 0 1 180 100"
              fill="none"
              stroke={color}
              strokeWidth="16"
              strokeLinecap="round"
              strokeDasharray={`${(pct / 100) * arc} ${arc}`}
              className="transition-all duration-1000"
            />
          )}
        </svg>
        <div className="absolute inset-x-0 bottom-0 text-center">
          <div className="text-3xl font-bold text-gray-800">{has ? Math.round(pct) : '—'}</div>
          <div className="text-xs text-gray-400">out of 100</div>
        </div>
      </div>
      {label && <p className="mt-3 text-sm font-medium" style={{ color }}>{label}</p>}
    </div>
  );
}

function EmptyChart({ height }) {
  return (
    <div className="flex items-center justify-center text-sm text-gray-400" style={{ height }}>
      Not enough data yet
    </div>
  );
}