import { View, Text, StyleSheet } from 'react-native';

export default function UrduLabel({ text, english, style }) {
  return (
    <View style={styles.container}>
      <Text style={[styles.urduText, style]}>{text}</Text>
      {english ? <Text style={[styles.englishText, style]}>{english}</Text> : null}
    </View>
  );
}

const styles = StyleSheet.create({
  container: { alignItems: 'center' },
  urduText: { fontSize: 16, fontWeight: '600', color: '#fff' },
  englishText: { fontSize: 12, color: '#cbd5e1', marginTop: 2 },
});