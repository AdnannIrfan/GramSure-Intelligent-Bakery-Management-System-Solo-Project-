import { useState, useEffect, useContext } from 'react';
import { View, Text, StyleSheet, Alert, ScrollView, TouchableOpacity, TextInput } from 'react-native';
import { Picker } from '@react-native-picker/picker';
import { SafeAreaView } from 'react-native-safe-area-context';
import apiClient from '../../services/apiClient';
import NumericKeypad from '../../components/NumericKeypad';
import VarianceBadge from '../../components/VarianceBadge';
import UrduLabel from '../../components/UrduLabel';
import { AuthContext } from '../../context/AuthContext';

export default function ProductionEntryScreen() {
  const [recipes, setRecipes] = useState([]);
  const [selectedProduct, setSelectedProduct] = useState('');
  const [flourUsed, setFlourUsed] = useState('5.0');
  const [actualUnits, setActualUnits] = useState('');
  const [expectedUnits, setExpectedUnits] = useState(null);
  const [submitting, setSubmitting] = useState(false);
  const { logout } = useContext(AuthContext);

  useEffect(() => {
    loadRecipes();
  }, []);

  useEffect(() => {
    calculateExpected();
  }, [selectedProduct, flourUsed, recipes]);

  async function loadRecipes() {
    try {
      const { data } = await apiClient.get('/recipes');
      setRecipes(data.data);
      if (data.data.length > 0) setSelectedProduct(data.data[0].product_name);
    } catch (err) {
      Alert.alert('Error', 'Failed to load recipes');
    }
  }

  const selectedRecipe = recipes.find((r) => r.product_name === selectedProduct);

  function calculateExpected() {
    const recipe = recipes.find((r) => r.product_name === selectedProduct);
    if (!recipe || !flourUsed) {
      setExpectedUnits(null);
      return;
    }
    const unitsPerKg = recipe.expected_units_per_batch / recipe.flour_qty_kg;
    setExpectedUnits(Math.round(unitsPerKg * parseFloat(flourUsed)));
  }

  const variance =
    expectedUnits && actualUnits
      ? ((parseInt(actualUnits, 10) - expectedUnits) / expectedUnits) * 100
      : null;

  const toleranceLimit = selectedRecipe?.tolerance_percent ? parseFloat(selectedRecipe.tolerance_percent) : 2;

  function handleLogoutPress() {
    Alert.alert('Log Out', 'Are you sure you want to log out?', [
      { text: 'Cancel', style: 'cancel' },
      { text: 'Log Out', style: 'destructive', onPress: logout },
    ]);
  }

  async function handleSubmit() {
    if (!selectedProduct || !flourUsed || !actualUnits) {
      Alert.alert('Missing info', 'Please fill in all fields');
      return;
    }
    setSubmitting(true);
    try {
      await apiClient.post('/batches', {
        productName: selectedProduct,
        flourUsedKg: parseFloat(flourUsed),
        actualUnits: parseInt(actualUnits, 10),
        shift: 'morning',
      });
      Alert.alert('✅ Batch Submitted', 'Production batch jama ho gaya (submitted successfully)');
      setActualUnits('');
    } catch (err) {
      Alert.alert('❌ Submission Failed', err.response?.data?.message || 'Please try again');
    } finally {
      setSubmitting(false);
    }
  }

  return (
    <SafeAreaView style={styles.safeArea} edges={['top']}>
      <View style={styles.headerBar}>
        <View>
          <Text style={styles.headerTitle}>Production Entry</Text>
          <Text style={styles.headerSubtitle}>GramSure</Text>
        </View>
        <TouchableOpacity onPress={handleLogoutPress} style={styles.logoutButton} activeOpacity={0.8}>
          <Text style={styles.logoutText}>Log Out</Text>
        </TouchableOpacity>
      </View>

      <ScrollView style={styles.container} contentContainerStyle={{ padding: 16, paddingBottom: 32 }}>
        <View style={styles.card}>
          <Text style={styles.label}>Product</Text>
          <View style={styles.pickerWrapper}>
            <Picker selectedValue={selectedProduct} onValueChange={setSelectedProduct}>
              {recipes.map((r) => (
                <Picker.Item key={r.id} label={r.product_name} value={r.product_name} />
              ))}
            </Picker>
          </View>

          <Text style={styles.label}>Flour Used (kg)</Text>
          <View style={styles.flourRow}>
            <TextInput
              style={styles.flourValue}
              value={flourUsed}
              onChangeText={setFlourUsed}
              keyboardType="decimal-pad"
              placeholder="0.0"
            />
          </View>

          {expectedUnits !== null && (
            <View style={styles.expectedBox}>
              <Text style={styles.expectedLabel}>SYSTEM EXPECTED</Text>
              <Text style={styles.expectedText}>{expectedUnits} units</Text>
            </View>
          )}
        </View>

        <View style={styles.card}>
          <Text style={styles.label}>Actual Units Produced</Text>
          <Text style={styles.actualDisplay}>{actualUnits || '0'}</Text>

          {variance !== null && (
            <View style={styles.varianceWrapper}>
              <VarianceBadge variancePercent={variance} limitPercent={toleranceLimit} />
            </View>
          )}

          <NumericKeypad value={actualUnits} onChange={setActualUnits} />
        </View>

        <TouchableOpacity
          style={[styles.submitButton, submitting && styles.submitButtonDisabled]}
          onPress={handleSubmit}
          disabled={submitting}
          activeOpacity={0.85}
        >
          <UrduLabel text="Batch jama karen" english="Submit Batch" style={styles.submitText} />
        </TouchableOpacity>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  safeArea: { flex: 1, backgroundColor: '#1e293b' },
  headerBar: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    paddingHorizontal: 16,
    paddingVertical: 14,
    backgroundColor: '#1e293b',
  },
  headerTitle: { color: '#fff', fontSize: 18, fontWeight: 'bold' },
  headerSubtitle: { color: '#94a3b8', fontSize: 11, marginTop: 1 },
  logoutButton: { backgroundColor: 'rgba(254,226,226,0.95)', paddingHorizontal: 14, paddingVertical: 7, borderRadius: 10 },
  logoutText: { color: '#dc2626', fontWeight: '700', fontSize: 12 },
  container: { flex: 1, backgroundColor: '#f8fafc' },
  card: {
    backgroundColor: '#fff',
    borderRadius: 16,
    padding: 16,
    marginBottom: 14,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.05,
    shadowRadius: 8,
    elevation: 2,
  },
  label: { fontSize: 12, fontWeight: '600', color: '#64748b', marginBottom: 6, marginTop: 4, textTransform: 'uppercase', letterSpacing: 0.3 },
  pickerWrapper: { backgroundColor: '#f8fafc', borderRadius: 10, borderWidth: 1, borderColor: '#e2e8f0', overflow: 'hidden' },
  flourRow: { backgroundColor: '#f8fafc', borderRadius: 10, borderWidth: 1, borderColor: '#e2e8f0', padding: 14, marginTop: 4 },
  flourValue: { fontSize: 16, fontWeight: '600', color: '#1e293b' },
  expectedBox: { backgroundColor: '#dcfce7', borderRadius: 12, padding: 14, marginTop: 14, alignItems: 'center' },
  expectedLabel: { color: '#16a34a', fontSize: 10, fontWeight: '700', letterSpacing: 0.5, marginBottom: 2 },
  expectedText: { color: '#166534', fontWeight: 'bold', fontSize: 18 },
  actualDisplay: { fontSize: 44, fontWeight: 'bold', textAlign: 'center', color: '#dc2626', marginTop: 4, marginBottom: 4 },
  varianceWrapper: { alignItems: 'center', marginBottom: 8 },
  submitButton: { backgroundColor: '#1e293b', borderRadius: 14, paddingVertical: 16, alignItems: 'center', marginTop: 4 },
  submitButtonDisabled: { opacity: 0.6 },
  submitText: { color: '#fff', fontWeight: 'bold', fontSize: 16 },
});