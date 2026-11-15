import { useEffect, useMemo, useState } from 'react';
import apiClient from '../../services/apiClient';
import Card from '../../components/common/Card'; // NEW
import { HBarList } from '../../components/charts/DashboardCharts'; // NEW

// NEW: safe ingredient list (display only)
function ingredientList(recipe) {
  let ing = recipe.ingredients;
  if (typeof ing === 'string') {
    try {
      ing = JSON.parse(ing);
    } catch {
      ing = [];
    }
  }
  return Array.isArray(ing) ? ing : [];
}

export default function RecipePage() {
  const [recipes, setRecipes] = useState([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editingId, setEditingId] = useState(null);
  const [form, setForm] = useState({
    productName: '',
    flourQtyKg: '',
    expectedUnitsPerBatch: '',
    tolerancePercent: 2,
    costPerUnit: '',
  });
  const [ingredients, setIngredients] = useState([{ name: '', quantity: '' }]);

  // NEW: UI-only state
  const [search, setSearch] = useState('');

  useEffect(() => {
    loadRecipes();
  }, []);

  async function loadRecipes() {
    setLoading(true);
    try {
      const { data } = await apiClient.get('/recipes');
      setRecipes(data.data);
    } catch (err) {
      console.error('Failed to load recipes:', err);
    } finally {
      setLoading(false);
    }
  }

  function updateIngredient(index, field, value) {
    const updated = [...ingredients];
    updated[index][field] = value;
    setIngredients(updated);
  }

  function addIngredientRow() {
    setIngredients([...ingredients, { name: '', quantity: '' }]);
  }

  function removeIngredientRow(index) {
    if (ingredients.length === 1) return;
    setIngredients(ingredients.filter((_, i) => i !== index));
  }

  function resetForm() {
    setForm({ productName: '', flourQtyKg: '', expectedUnitsPerBatch: '', tolerancePercent: 2, costPerUnit: '' });
    setIngredients([{ name: '', quantity: '' }]);
    setEditingId(null);
  }

  function startEdit(recipe) {
    setEditingId(recipe.id);
    setForm({
      productName: recipe.product_name,
      flourQtyKg: recipe.flour_qty_kg,
      expectedUnitsPerBatch: recipe.expected_units_per_batch,
      tolerancePercent: recipe.tolerance_percent,
      costPerUnit: recipe.cost_per_unit,
    });
    let existingIngredients = recipe.ingredients;
    if (typeof existingIngredients === 'string') {
      try {
        existingIngredients = JSON.parse(existingIngredients);
      } catch {
        existingIngredients = [];
      }
    }
    setIngredients(
      Array.isArray(existingIngredients) && existingIngredients.length > 0
        ? existingIngredients.map((ing) => ({ name: ing.name, quantity: String(ing.quantity) }))
        : [{ name: '', quantity: '' }]
    );
    setShowForm(true);
  }

  function handleCancel() {
    setShowForm(false);
    resetForm();
  }

  async function handleSubmit(e) {
    e.preventDefault();

    const cleanedIngredients = ingredients
      .filter((ing) => ing.name.trim() !== '' && ing.quantity !== '')
      .map((ing) => ({ name: ing.name.trim(), quantity: parseFloat(ing.quantity) }));

    const payload = {
      ...form,
      productName: form.productName.trim(),
      flourQtyKg: parseFloat(form.flourQtyKg),
      expectedUnitsPerBatch: parseInt(form.expectedUnitsPerBatch, 10),
      tolerancePercent: parseFloat(form.tolerancePercent),
      costPerUnit: parseFloat(form.costPerUnit) || 0,
      ingredients: cleanedIngredients,
    };

    try {
      if (editingId) {
        await apiClient.put(`/recipes/${editingId}`, payload);
      } else {
        await apiClient.post('/recipes', payload);
      }
      setShowForm(false);
      resetForm();
      loadRecipes();
    } catch (err) {
      alert(err.response?.data?.message || (editingId ? 'Failed to update recipe' : 'Failed to create recipe'));
    }
  }

  /* ---------- NEW: derived chart data (display only) ---------- */

  const avgCost = useMemo(
    () => (recipes.length ? recipes.reduce((s, r) => s + (Number(r.cost_per_unit) || 0), 0) / recipes.length : 0),
    [recipes]
  );
  const avgTolerance = useMemo(
    () => (recipes.length ? recipes.reduce((s, r) => s + (Number(r.tolerance_percent) || 0), 0) / recipes.length : 0),
    [recipes]
  );
  const totalUnitsPerBatch = useMemo(
    () => recipes.reduce((s, r) => s + (Number(r.expected_units_per_batch) || 0), 0),
    [recipes]
  );

  const costBars = useMemo(
    () =>
      [...recipes]
        .sort((a, b) => Number(b.cost_per_unit) - Number(a.cost_per_unit))
        .slice(0, 6)
        .map((r, i) => ({
          label: r.product_name,
          value: Number(r.cost_per_unit) || 0,
          display: `Rs. ${Number(r.cost_per_unit) || 0}`,
          color: i === 0 ? '#f59e0b' : '#1e293b',
        })),
    [recipes]
  );

  const unitsBars = useMemo(
    () =>
      [...recipes]
        .sort((a, b) => Number(b.expected_units_per_batch) - Number(a.expected_units_per_batch))
        .slice(0, 6)
        .map((r, i) => ({
          label: r.product_name,
          value: Number(r.expected_units_per_batch) || 0,
          display: `${r.expected_units_per_batch} units`,
          color: i === 0 ? '#f59e0b' : '#1e293b',
        })),
    [recipes]
  );

  // Flour per finished unit, in grams
  const flourPerUnitBars = useMemo(
    () =>
      recipes
        .filter((r) => Number(r.expected_units_per_batch) > 0)
        .map((r) => ({
          r,
          grams: ((Number(r.flour_qty_kg) || 0) / Number(r.expected_units_per_batch)) * 1000,
        }))
        .sort((a, b) => b.grams - a.grams)
        .slice(0, 6)
        .map(({ r, grams }, i) => ({
          label: r.product_name,
          value: grams,
          display: `${grams.toFixed(0)} g`,
          color: i === 0 ? '#f59e0b' : '#1e293b',
        })),
    [recipes]
  );

  const filteredRecipes = useMemo(() => {
    const q = search.trim().toLowerCase();
    return recipes.filter((r) => !q || String(r.product_name || '').toLowerCase().includes(q));
  }, [recipes, search]);

  const inputClass =
    'border border-gray-200 bg-white rounded-xl px-3.5 py-2.5 text-sm focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent transition-shadow placeholder:text-gray-400';

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="bg-gradient-to-r from-gramsure-navy to-slate-800 px-6 pt-8 pb-16">
        <div className="max-w-[1400px] mx-auto flex items-center justify-between gap-4">
          <div>
            <h1 className="text-2xl font-bold text-white">Recipe & Standards Engine</h1>
            <p className="text-sm text-white/50 mt-1">{recipes.length} recipe{recipes.length !== 1 ? 's' : ''} defined</p>
          </div>
          <button
            onClick={() => (showForm ? handleCancel() : setShowForm(true))}
            className="bg-gramsure-gold text-gramsure-navy px-4 py-2.5 rounded-xl text-sm font-semibold hover:opacity-90 active:scale-[0.98] transition-all shadow-lg shadow-black/10"
          >
            {showForm ? 'Cancel' : '+ New Recipe'}
          </button>
        </div>
      </div>

      <div className="max-w-[1400px] mx-auto px-6 -mt-10 pb-10 space-y-6">
        {/* KPI cards */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
          <Card title="Total Recipes" value={recipes.length} icon="box" />
          <Card title="Average Cost / Unit" value={`Rs. ${avgCost.toFixed(1)}`} icon="money" />
          <Card title="Average Tolerance" value={`±${avgTolerance.toFixed(1)}%`} icon="shield" subtitle="allowed yield variance" />
          <Card title="Units per Batch (all)" value={totalUnitsPerBatch.toLocaleString()} icon="cart" subtitle="sum of expected units" />
        </div>

        {/* Charts */}
        {!loading && recipes.length > 0 && (
          <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
            <Panel title="Cost per Unit">
              <HBarList items={costBars} emptyText="No recipes yet" />
            </Panel>
            <Panel title="Expected Units per Batch">
              <HBarList items={unitsBars} emptyText="No recipes yet" />
            </Panel>
            <Panel title="Flour per Unit">
              <HBarList items={flourPerUnitBars} emptyText="No recipes yet" />
              <p className="text-[11px] text-gray-400 mt-3">Flour (kg) per batch divided by expected units, in grams.</p>
            </Panel>
          </div>
        )}

        {showForm && (
          <form
            onSubmit={handleSubmit}
            className="bg-white rounded-2xl shadow-sm border border-gray-100 p-5 grid grid-cols-1 sm:grid-cols-2 gap-4"
          >
            <div className="sm:col-span-2">
              <h3 className="text-sm font-semibold text-gray-800 mb-1">
                {editingId ? 'Edit Recipe (saves as a new version)' : 'New Recipe Details'}
              </h3>
              <p className="text-xs text-gray-400">
                {editingId
                  ? 'Update the formula below. Saving will version this recipe and keep the old one in history.'
                  : 'Define the standard batch this recipe should produce.'}
              </p>
            </div>

            <input
              placeholder="Product Name"
              value={form.productName}
              onChange={(e) => setForm({ ...form, productName: e.target.value })}
              required
              className={inputClass}
            />
            <input
              type="number" step="0.01" min="0.01"
              placeholder="Flour Qty (kg)"
              value={form.flourQtyKg}
              onChange={(e) => setForm({ ...form, flourQtyKg: e.target.value })}
              required
              className={inputClass}
            />
            <input
              type="number" min="1"
              placeholder="Expected Units per Batch"
              value={form.expectedUnitsPerBatch}
              onChange={(e) => setForm({ ...form, expectedUnitsPerBatch: e.target.value })}
              required
              className={inputClass}
            />
            <input
              type="number" step="0.1"
              placeholder="Tolerance %"
              value={form.tolerancePercent}
              onChange={(e) => setForm({ ...form, tolerancePercent: e.target.value })}
              className={inputClass}
            />
            <input
              type="number" step="0.01"
              placeholder="Cost per Unit (Rs.)"
              value={form.costPerUnit}
              onChange={(e) => setForm({ ...form, costPerUnit: e.target.value })}
              className={`${inputClass} sm:col-span-2`}
            />

            <div className="sm:col-span-2 border-t border-gray-100 pt-4">
              <div className="flex items-center justify-between mb-2">
                <h4 className="text-sm font-semibold text-gray-800">Ingredients</h4>
                <button
                  type="button"
                  onClick={addIngredientRow}
                  className="text-xs font-semibold text-gramsure-navy bg-gramsure-gold/20 hover:bg-gramsure-gold/30 px-3 py-1.5 rounded-lg transition-colors"
                >
                  + Add Ingredient
                </button>
              </div>
              <p className="text-xs text-gray-400 mb-3">List every ingredient used in this recipe (e.g. flour, sugar, ghee).</p>

              <div className="space-y-2">
                {ingredients.map((ing, idx) => (
                  <div key={idx} className="flex gap-2">
                    <input
                      placeholder="Ingredient name"
                      value={ing.name}
                      onChange={(e) => updateIngredient(idx, 'name', e.target.value)}
                      className={`${inputClass} flex-1`}
                    />
                    <input
                      type="number" step="0.01" min="0"
                      placeholder="Qty"
                      value={ing.quantity}
                      onChange={(e) => updateIngredient(idx, 'quantity', e.target.value)}
                      className={`${inputClass} w-24`}
                    />
                    <button
                      type="button"
                      onClick={() => removeIngredientRow(idx)}
                      disabled={ingredients.length === 1}
                      className="px-3 rounded-xl text-sm text-gray-400 hover:text-red-500 hover:bg-red-50 disabled:opacity-30 disabled:cursor-not-allowed transition-colors"
                    >
                      ✕
                    </button>
                  </div>
                ))}
              </div>
            </div>

            <button
              type="submit"
              className="sm:col-span-2 bg-gramsure-navy text-white font-semibold py-2.5 rounded-xl text-sm hover:bg-slate-800 active:scale-[0.99] transition-all"
            >
              {editingId ? 'Save New Version' : 'Save Recipe'}
            </button>
          </form>
        )}

        {/* Table */}
        <div className="bg-white rounded-2xl shadow-sm border border-gray-100 overflow-hidden">
          <div className="p-4 border-b border-gray-100 flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
            <h3 className="text-sm font-semibold text-gray-800">
              All Recipes
              <span className="ml-2 text-xs font-normal text-gray-400">{filteredRecipes.length} shown</span>
            </h3>
            <input
              type="text"
              value={search}
              onChange={(e) => setSearch(e.target.value)}
              placeholder="Search recipe..."
              className="w-full sm:w-52 px-3 py-2 text-sm bg-gray-50 border border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent"
            />
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
                    <th className="text-left px-5 py-3 font-semibold">Flour (kg)</th>
                    <th className="text-left px-5 py-3 font-semibold">Expected Units</th>
                    <th className="text-left px-5 py-3 font-semibold">Ingredients</th>
                    <th className="text-left px-5 py-3 font-semibold">Tolerance</th>
                    <th className="text-left px-5 py-3 font-semibold">Cost/Unit</th>
                    <th className="text-left px-5 py-3 font-semibold">Version</th>
                    <th className="text-left px-5 py-3 font-semibold">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  {filteredRecipes.map((r) => (
                    <tr key={r.id} className="border-t border-gray-50 hover:bg-gray-50/60 transition-colors">
                      <td className="px-5 py-3 font-medium text-gray-800">{r.product_name}</td>
                      <td className="px-5 py-3 text-gray-600">{r.flour_qty_kg}</td>
                      <td className="px-5 py-3 text-gray-600">{r.expected_units_per_batch}</td>
                      <td className="px-5 py-3 text-gray-600">{ingredientList(r).length}</td>
                      <td className="px-5 py-3 text-gray-600">±{r.tolerance_percent}%</td>
                      <td className="px-5 py-3 font-medium text-gray-800">Rs. {r.cost_per_unit}</td>
                      <td className="px-5 py-3">
                        <span className="inline-block px-2 py-0.5 rounded-full text-xs font-semibold bg-gray-100 text-gray-600">
                          v{r.version}
                        </span>
                      </td>
                      <td className="px-5 py-3">
                        <button
                          onClick={() => startEdit(r)}
                          className="text-xs font-semibold text-gramsure-navy bg-gramsure-navy/5 hover:bg-gramsure-navy/10 px-2.5 py-1 rounded-lg transition-colors"
                        >
                          Edit
                        </button>
                      </td>
                    </tr>
                  ))}
                  {filteredRecipes.length === 0 && (
                    <tr>
                      <td colSpan={8} className="px-5 py-12 text-center text-gray-400">
                        {recipes.length === 0 ? 'No recipes yet.' : 'No recipes match your search.'}
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
