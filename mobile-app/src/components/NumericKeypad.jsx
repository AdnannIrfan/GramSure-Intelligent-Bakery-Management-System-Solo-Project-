import { View, Text, TouchableOpacity, StyleSheet } from 'react-native';


export default function NumericKeypad({ value, onChange }) {
  const keys = ['1', '2', '3', '4', '5', '6', '7', '8', '9', 'DEL', '0', 'OK'];

  function handlePress(key) {
    if (key === 'DEL') {
      onChange(value.slice(0, -1));
    } else if (key === 'OK') {
      
      return;
    } else {
      onChange((value || '') + key);
    }
  }

  return (
    <View style={styles.grid}>
      {keys.map((key) => (
        <TouchableOpacity
          key={key}
          style={[
            styles.key,
            key === 'DEL' && styles.keyDel,
            key === 'OK' && styles.keyOk,
          ]}
          onPress={() => handlePress(key)}
        >
          <Text
            style={[
              styles.keyText,
              key === 'DEL' && styles.keyTextDel,
              key === 'OK' && styles.keyTextOk,
            ]}
          >
            {key}
          </Text>
        </TouchableOpacity>
      ))}
    </View>
  );
}

const styles = StyleSheet.create({
  grid: { flexDirection: 'row', flexWrap: 'wrap', justifyContent: 'space-between', marginTop: 16 },
  key: {
    width: '31%',
    aspectRatio: 1.6,
    backgroundColor: '#fff',
    borderRadius: 10,
    borderWidth: 1,
    borderColor: '#e2e8f0',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 10,
  },
  keyText: { fontSize: 22, fontWeight: '600', color: '#1e293b' },
  keyDel: { backgroundColor: '#fee2e2' },
  keyTextDel: { color: '#dc2626' },
  keyOk: { backgroundColor: '#16a34a' },
  keyTextOk: { color: '#fff' },
});
