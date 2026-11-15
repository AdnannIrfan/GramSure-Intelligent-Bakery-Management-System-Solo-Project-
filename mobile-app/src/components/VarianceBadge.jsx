import { View, Text, StyleSheet } from 'react-native';


export default function VarianceBadge({ variancePercent, limitPercent = 2, label }) {
  const isOverLimit = Math.abs(variancePercent) > limitPercent;

  const tone = isOverLimit ? styles.critical : styles.good;
  const textTone = isOverLimit ? styles.criticalText : styles.goodText;

  const displayLabel =
    label || `Variance: ${variancePercent > 0 ? '+' : ''}${variancePercent.toFixed(1)}% | Limit: ±${limitPercent}%`;

  return (
    <View style={[styles.badge, tone]}>
      <Text style={[styles.text, textTone]}>
        {displayLabel} {isOverLimit ? '⚠️' : '✓'}
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  badge: {
    borderRadius: 8,
    paddingVertical: 8,
    paddingHorizontal: 12,
    alignItems: 'center',
    marginVertical: 8,
  },
  text: { fontSize: 13, fontWeight: '600' },
  good: { backgroundColor: '#dcfce7' },
  goodText: { color: '#166534' },
  critical: { backgroundColor: '#fed7aa' },
  criticalText: { color: '#c2410c' },
});