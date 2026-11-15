const TONE_STYLES = {
  good: { pill: 'bg-[#16a34a]/10 text-[#16a34a]', dot: 'bg-[#16a34a]' },
  warn: { pill: 'bg-[#f97316]/10 text-[#f97316]', dot: 'bg-[#f97316]' },
  critical: { pill: 'bg-[#dc2626]/10 text-[#dc2626]', dot: 'bg-[#dc2626]' },
  info: { pill: 'bg-blue-50 text-blue-600', dot: 'bg-blue-500' },
  gold: { pill: 'bg-amber-50 text-amber-700', dot: 'bg-amber-500' },
  neutral: { pill: 'bg-gray-100 text-gray-600', dot: 'bg-gray-400' },
};

/**
 * Existing props: children, tone
 * Optional new props:
 *   dot  - shows a small colored dot before the text
 *   size - 'sm' | 'md' (default 'md')
 */
export default function Badge({ children, tone = 'neutral', dot = false, size = 'md' }) {
  const style = TONE_STYLES[tone] || TONE_STYLES.neutral;
  const sizing = size === 'sm' ? 'px-2 py-0.5 text-[11px]' : 'px-2.5 py-1 text-xs';

  return (
    <span className={`inline-flex items-center gap-1.5 rounded-full font-semibold whitespace-nowrap ${sizing} ${style.pill}`}>
      {dot && <span className={`w-1.5 h-1.5 rounded-full ${style.dot}`} />}
      {children}
    </span>
  );
}