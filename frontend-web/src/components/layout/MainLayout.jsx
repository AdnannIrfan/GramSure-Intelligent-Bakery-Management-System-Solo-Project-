import { useEffect, useMemo, useState } from 'react';
import { Outlet, NavLink, useLocation } from 'react-router-dom';
import { useAuth } from '../../hooks/useAuth';

/* ---------- Icons (inline SVG, no package needed) ---------- */
const ICONS = {
  dashboard: 'M3 3h7v9H3z M14 3h7v5h-7z M14 12h7v9h-7z M3 16h7v5H3z',
  recipes: 'M4 19.5A2.5 2.5 0 016.5 17H20V3H6.5A2.5 2.5 0 004 5.5v14z',
  procurement:
    'M9 21a1 1 0 100-2 1 1 0 000 2z M20 21a1 1 0 100-2 1 1 0 000 2z M1 1h4l2.68 13.39a2 2 0 002 1.61h9.72a2 2 0 002-1.61L23 6H6',
  inventory:
    'M16.5 9.4l-9-5.19 M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z M3.27 6.96L12 12.01l8.73-5.05 M12 22.08V12',
  production: 'M12 2L2 7l10 5 10-5-10-5z M2 17l10 5 10-5 M2 12l10 5 10-5',
  staff:
    'M17 21v-2a4 4 0 00-4-4H5a4 4 0 00-4 4v2 M9 11a4 4 0 100-8 4 4 0 000 8z M23 21v-2a4 4 0 00-3-3.87 M16 3.13a4 4 0 010 7.75',
  sales: 'M23 6l-9.5 9.5-5-5L1 18 M17 6h6v6',
  expenses: 'M3 5h18a2 2 0 012 2v10a2 2 0 01-2 2H3a2 2 0 01-2-2V7a2 2 0 012-2z M1 10h22',
  pnl: 'M21.21 15.89A10 10 0 118 2.83 M22 12A10 10 0 0012 2v10z',
  fraud: 'M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z',
  forecasting: 'M22 12h-4l-3 9L9 3l-3 9H2',
  notifications: 'M18 8A6 6 0 006 8c0 7-3 9-3 9h18s-3-2-3-9 M13.73 21a2 2 0 01-3.46 0',
  branches: 'M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0118 0z M12 13a3 3 0 100-6 3 3 0 000 6z',
  menu: 'M3 12h18 M3 6h18 M3 18h18',
  close: 'M18 6L6 18 M6 6l12 12',
  logout: 'M9 21H5a2 2 0 01-2-2V5a2 2 0 012-2h4 M16 17l5-5-5-5 M21 12H9',
  chevron: 'M15 18l-6-6 6-6',
};

function Icon({ name, className = 'w-[18px] h-[18px]' }) {
  return (
    <svg
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      strokeWidth="1.8"
      strokeLinecap="round"
      strokeLinejoin="round"
      className={className}
      aria-hidden="true"
    >
      <path d={ICONS[name]} />
    </svg>
  );
}

/* ---------- Navigation (same routes as before) ---------- */
const NAV_SECTIONS = [
  {
    label: 'Overview',
    items: [{ path: '/', label: 'Dashboard', icon: 'dashboard', end: true }],
  },
  {
    label: 'Operations',
    items: [
      { path: '/recipes', label: 'Recipes', icon: 'recipes' },
      { path: '/procurement', label: 'Procurement', icon: 'procurement' },
      { path: '/inventory', label: 'Inventory', icon: 'inventory' },
      { path: '/production', label: 'Production', icon: 'production' },
      { path: '/staff', label: 'Staff', icon: 'staff' },
    ],
  },
  {
    label: 'Finance',
    items: [
      { path: '/sales', label: 'Sales', icon: 'sales' },
      { path: '/expenses', label: 'Expenses', icon: 'expenses' },
      { path: '/financial-dashboard', label: 'P&L', icon: 'pnl' },
    ],
  },
  {
    label: 'Insights',
    items: [
      { path: '/fraud-alerts', label: 'Fraud Alerts', icon: 'fraud' },
      { path: '/forecasting', label: 'Forecasting', icon: 'forecasting' },
      { path: '/notifications', label: 'Notifications', icon: 'notifications' },
    ],
  },
  {
    label: 'System',
    items: [{ path: '/branches', label: 'Branches', icon: 'branches' }],
  },
];

export default function MainLayout() {
  const { user, logout } = useAuth();
  const location = useLocation();

  // UI-only state
  const [mobileOpen, setMobileOpen] = useState(false);
  const [collapsed, setCollapsed] = useState(() => {
    try {
      return localStorage.getItem('sidebarCollapsed') === '1';
    } catch {
      return false;
    }
  });

  useEffect(() => {
    try {
      localStorage.setItem('sidebarCollapsed', collapsed ? '1' : '0');
    } catch {
      /* ignore */
    }
  }, [collapsed]);

  // close the mobile drawer after navigating
  useEffect(() => {
    setMobileOpen(false);
  }, [location.pathname]);

  const initials = user?.name
    ? user.name.split(' ').map((n) => n[0]).slice(0, 2).join('').toUpperCase()
    : '?';

  const pageTitle = useMemo(() => {
    const all = NAV_SECTIONS.flatMap((s) => s.items);
    const match = all.find((i) =>
      i.path === '/' ? location.pathname === '/' : location.pathname.startsWith(i.path)
    );
    return match?.label ?? 'GramSure';
  }, [location.pathname]);

  const todayLabel = new Date().toLocaleDateString('en-US', {
    weekday: 'short',
    month: 'short',
    day: 'numeric',
    year: 'numeric',
  });

  // On desktop the sidebar may be collapsed; on mobile the drawer is always full width.
  const showLabels = !collapsed;

  return (
    <div className="flex h-screen overflow-hidden font-sans bg-gray-50">
      {/* Mobile backdrop */}
      {mobileOpen && (
        <div
          className="fixed inset-0 z-30 bg-black/50 backdrop-blur-sm lg:hidden"
          onClick={() => setMobileOpen(false)}
        />
      )}

      {/* Sidebar */}
      <aside
        className={`fixed lg:static inset-y-0 left-0 z-40 bg-gramsure-navy text-white flex flex-col shrink-0 border-r border-black/20 transition-all duration-300
          ${mobileOpen ? 'translate-x-0' : '-translate-x-full lg:translate-x-0'}
          w-64 ${collapsed ? 'lg:w-[76px]' : 'lg:w-64'}`}
      >
        {/* Brand */}
        <div className="px-4 py-5 border-b border-white/10 flex items-center gap-3">
          <div className="w-9 h-9 rounded-lg bg-gradient-to-br from-gramsure-gold to-amber-600 flex items-center justify-center shrink-0 shadow-lg shadow-gramsure-gold/20">
            <span className="text-gramsure-navy font-bold text-sm">G</span>
          </div>
          <div className={`min-w-0 flex-1 ${collapsed ? 'lg:hidden' : ''}`}>
            <h1 className="text-base font-bold text-white leading-tight tracking-tight">GramSure</h1>
            <p className="text-[10px] text-white/35 leading-tight uppercase tracking-wider mt-0.5">
              Bakery Management
            </p>
          </div>
          <button
            onClick={() => setMobileOpen(false)}
            className="lg:hidden p-1.5 rounded-lg text-white/50 hover:text-white hover:bg-white/10"
            aria-label="Close menu"
          >
            <Icon name="close" />
          </button>
        </div>

        {/* Navigation */}
        <nav className="flex-1 overflow-y-auto py-3 px-3 space-y-4">
          {NAV_SECTIONS.map((section) => (
            <div key={section.label}>
              <p
                className={`px-3 mb-1 text-[10px] font-semibold uppercase tracking-wider text-white/25 ${
                  collapsed ? 'lg:hidden' : ''
                }`}
              >
                {section.label}
              </p>
              {collapsed && <div className="hidden lg:block mx-3 mb-2 border-t border-white/10" />}
              <div className="space-y-0.5">
                {section.items.map((item) => (
                  <NavLink
                    key={item.path}
                    to={item.path}
                    end={item.end}
                    title={collapsed ? item.label : undefined}
                    className={({ isActive }) =>
                      `group flex items-center gap-3 px-3 py-2.5 rounded-lg text-sm transition-all relative ${
                        collapsed ? 'lg:justify-center' : ''
                      } ${
                        isActive
                          ? 'bg-gramsure-gold text-gramsure-navy font-semibold shadow-sm'
                          : 'text-white/55 hover:bg-white/[0.06] hover:text-white'
                      }`
                    }
                  >
                    <Icon name={item.icon} className="w-[18px] h-[18px] shrink-0" />
                    <span className={collapsed ? 'lg:hidden' : ''}>{item.label}</span>
                  </NavLink>
                ))}
              </div>
            </div>
          ))}
        </nav>

        {/* Collapse toggle (desktop only) */}
        <button
          onClick={() => setCollapsed((c) => !c)}
          className="hidden lg:flex items-center gap-3 mx-3 mb-2 px-3 py-2 rounded-lg text-xs text-white/40 hover:text-white hover:bg-white/[0.06] transition-colors"
          title={collapsed ? 'Expand sidebar' : 'Collapse sidebar'}
        >
          <Icon
            name="chevron"
            className={`w-4 h-4 shrink-0 transition-transform duration-300 ${collapsed ? 'rotate-180' : ''}`}
          />
          {showLabels && <span>Collapse</span>}
        </button>

        {/* User */}
        <div className="px-3 py-3 border-t border-white/10">
          <div
            className={`flex items-center gap-3 px-2 py-2 rounded-xl hover:bg-white/[0.06] transition-colors cursor-default ${
              collapsed ? 'lg:justify-center' : ''
            }`}
          >
            <div className="w-9 h-9 rounded-full bg-gradient-to-br from-gramsure-gold/25 to-gramsure-gold/10 border border-gramsure-gold/20 flex items-center justify-center shrink-0">
              <span className="text-xs font-bold text-gramsure-gold">{initials}</span>
            </div>
            <div className={`min-w-0 flex-1 ${collapsed ? 'lg:hidden' : ''}`}>
              <p className="text-sm font-medium text-white truncate">{user?.name}</p>
              <p className="text-[11px] text-white/35 capitalize">{user?.role}</p>
            </div>
          </div>
          <button
            onClick={logout}
            title="Log out"
            className={`mt-1 w-full flex items-center gap-3 px-3 py-2 text-xs font-medium text-white/40 hover:text-red-300 hover:bg-white/[0.06] rounded-lg transition-colors ${
              collapsed ? 'lg:justify-center' : ''
            }`}
          >
            <Icon name="logout" className="w-4 h-4 shrink-0" />
            <span className={collapsed ? 'lg:hidden' : ''}>Log out</span>
          </button>
        </div>
      </aside>

      {/* Right side: top bar + page content */}
      <div className="flex-1 flex flex-col min-w-0">
        <header className="h-14 shrink-0 bg-white border-b border-gray-100 px-4 sm:px-6 flex items-center justify-between">
          <div className="flex items-center gap-3 min-w-0">
            <button
              onClick={() => setMobileOpen(true)}
              className="lg:hidden p-2 -ml-2 rounded-lg text-gray-500 hover:bg-gray-100"
              aria-label="Open menu"
            >
              <Icon name="menu" className="w-5 h-5" />
            </button>
            <h2 className="text-base font-semibold text-gray-800 truncate">{pageTitle}</h2>
          </div>

          <div className="flex items-center gap-4">
            <span className="hidden sm:block text-xs text-gray-400">{todayLabel}</span>
            <div className="flex items-center gap-2.5">
              <div className="hidden sm:block text-right leading-tight">
                <p className="text-sm font-medium text-gray-700">{user?.name}</p>
                <p className="text-[11px] text-gray-400 capitalize">{user?.role}</p>
              </div>
              <div className="w-8 h-8 rounded-full bg-gramsure-navy flex items-center justify-center">
                <span className="text-[11px] font-bold text-gramsure-gold">{initials}</span>
              </div>
            </div>
          </div>
        </header>

        <main className="flex-1 overflow-y-auto">
          <Outlet />
        </main>
      </div>
    </div>
  );
}