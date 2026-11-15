import { Routes, Route, Navigate } from 'react-router-dom';
import { useAuth } from '../hooks/useAuth';

import LoginPage from '../pages/LoginPage';
import DashboardPage from '../pages/DashboardPage';
import RecipePage from '../features/recipe/RecipePage';
import ProcurementPage from '../features/procurement/ProcurementPage';
import InventoryPage from '../features/inventory/InventoryPage';
import ProductionPage from '../features/production/ProductionPage';
import SalesPage from '../features/sales/SalesPage';
import ExpensesPage from '../features/expenses/ExpensesPage';
import StaffPage from '../features/staff/StaffPage';
import FinancialDashboardPage from '../features/financial-dashboard/FinancialDashboardPage';
import FraudAlertsPage from '../features/fraud-alerts/FraudAlertsPage';
import ForecastingPage from '../features/forecasting/ForecastingPage';
import NotificationsPage from '../features/notifications/NotificationsPage';
import BranchesPage from '../features/branches/BranchesPage';
import MainLayout from '../components/layout/MainLayout';

function ProtectedRoute({ children }) {
  const { isAuthenticated, loading } = useAuth();
  if (loading) return <div className="flex items-center justify-center h-screen">Loading...</div>;
  if (!isAuthenticated) return <Navigate to="/login" replace />;
  return children;
}

export default function AppRoutes() {
  return (
    <Routes>
      <Route path="/login" element={<LoginPage />} />

      <Route
        path="/"
        element={
          <ProtectedRoute>
            <MainLayout />
          </ProtectedRoute>
        }
      >
        <Route index element={<DashboardPage />} />
        <Route path="recipes" element={<RecipePage />} />
        <Route path="procurement" element={<ProcurementPage />} />
        <Route path="inventory" element={<InventoryPage />} />
        <Route path="production" element={<ProductionPage />} />
        <Route path="sales" element={<SalesPage />} />
        <Route path="expenses" element={<ExpensesPage />} />
        <Route path="staff" element={<StaffPage />} />
        <Route path="financial-dashboard" element={<FinancialDashboardPage />} />
        <Route path="fraud-alerts" element={<FraudAlertsPage />} />
        <Route path="forecasting" element={<ForecastingPage />} />
        <Route path="notifications" element={<NotificationsPage />} />
        <Route path="branches" element={<BranchesPage />} />
      </Route>

      <Route path="*" element={<Navigate to="/" replace />} />
    </Routes>
  );
}