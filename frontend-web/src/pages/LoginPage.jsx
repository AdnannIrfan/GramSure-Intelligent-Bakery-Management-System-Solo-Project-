import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAuth } from '../hooks/useAuth';

/* ---------- Icons (inline SVG, no package needed) ---------- */
const ICONS = {
  phone: 'M5 4h4l2 5-2.5 1.5a11 11 0 005 5L15 13l5 2v4a2 2 0 01-2 2A16 16 0 013 6a2 2 0 012-2z',
  lock: 'M5 11h14a2 2 0 012 2v7a2 2 0 01-2 2H5a2 2 0 01-2-2v-7a2 2 0 012-2z M7 11V7a5 5 0 0110 0v4',
  eye: 'M1 12s4-8 11-8 11 8 11 8-4 8-11 8S1 12 1 12z M12 15a3 3 0 100-6 3 3 0 000 6z',
  eyeOff:
    'M17.94 17.94A10.07 10.07 0 0112 20c-7 0-11-8-11-8a18.45 18.45 0 015.06-5.94 M9.9 4.24A9.12 9.12 0 0112 4c7 0 11 8 11 8a18.5 18.5 0 01-2.16 3.19 M1 1l22 22',
  chart: 'M3 3v18h18 M7 14l4-4 4 4 5-6',
  shield: 'M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z',
  box: 'M21 16V8a2 2 0 00-1-1.73l-7-4a2 2 0 00-2 0l-7 4A2 2 0 003 8v8a2 2 0 001 1.73l7 4a2 2 0 002 0l7-4A2 2 0 0021 16z M3.27 6.96L12 12.01l8.73-5.05 M12 22.08V12',
  alert: 'M12 8v4 M12 16h.01 M12 22a10 10 0 100-20 10 10 0 000 20z',
};

function Icon({ name, className = 'w-4 h-4' }) {
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

const FEATURES = [
  { icon: 'chart', title: 'Live sales & profit', text: 'See revenue and net profit as it happens.' },
  { icon: 'box', title: 'Smart inventory', text: 'Get low-stock warnings before you run out.' },
  { icon: 'shield', title: 'Fraud detection', text: 'Spot suspicious activity across branches.' },
];

export default function LoginPage() {
  const [phone, setPhone] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const [loading, setLoading] = useState(false);
  const [showPassword, setShowPassword] = useState(false);

  const { login } = useAuth();
  const navigate = useNavigate();

  async function handleSubmit(e) {
    e.preventDefault();
    setError('');
    setLoading(true);

    try {
      await login(phone, password);
      navigate('/');
    } catch (err) {
      setError(err.response?.data?.message || 'Login failed. Please check your credentials.');
    } finally {
      setLoading(false);
    }
  }

  return (
    <div className="min-h-screen flex bg-gray-50">
      {/* Left: brand panel (hidden on small screens) */}
      <div className="hidden lg:flex lg:w-1/2 relative overflow-hidden bg-gradient-to-br from-gramsure-navy via-gramsure-navy to-slate-800 text-white flex-col justify-between p-12">
        <div className="absolute -top-32 -right-32 w-[28rem] h-[28rem] bg-gramsure-gold/10 rounded-full blur-3xl" />
        <div className="absolute -bottom-32 -left-32 w-[28rem] h-[28rem] bg-gramsure-gold/5 rounded-full blur-3xl" />

        {/* Brand */}
        <div className="relative z-10 flex items-center gap-3">
          <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-gramsure-gold to-amber-600 flex items-center justify-center shadow-lg shadow-gramsure-gold/20">
            <span className="text-gramsure-navy font-bold">G</span>
          </div>
          <span className="text-xl font-bold tracking-tight">GramSure</span>
        </div>

        {/* Headline + features */}
        <div className="relative z-10 max-w-md">
          <h2 className="text-4xl font-bold leading-tight">
            Run your bakery with <span className="text-gramsure-gold">clarity</span>.
          </h2>
          <p className="mt-4 text-white/60 text-base">
            One dashboard for sales, stock, staff and security, built for bakery owners.
          </p>

          <ul className="mt-10 space-y-5">
            {FEATURES.map((f) => (
              <li key={f.title} className="flex items-start gap-4">
                <span className="w-10 h-10 shrink-0 rounded-xl bg-white/10 border border-white/10 flex items-center justify-center text-gramsure-gold">
                  <Icon name={f.icon} className="w-5 h-5" />
                </span>
                <div>
                  <p className="font-semibold text-white">{f.title}</p>
                  <p className="text-sm text-white/50 mt-0.5">{f.text}</p>
                </div>
              </li>
            ))}
          </ul>
        </div>

        {/* Decorative illustration (no real data) */}
        <div className="relative z-10 flex items-end gap-2 h-16 opacity-60" aria-hidden="true">
          {[35, 55, 40, 70, 50, 85, 65, 100].map((h, i) => (
            <div
              key={i}
              className={`flex-1 rounded-t-md ${i === 7 ? 'bg-gramsure-gold' : 'bg-white/20'}`}
              style={{ height: `${h}%` }}
            />
          ))}
        </div>
      </div>

      {/* Right: form */}
      <div className="flex-1 flex items-center justify-center px-6 py-12 relative">
        <div className="w-full max-w-sm">
          {/* Mobile brand */}
          <div className="lg:hidden text-center mb-8">
            <div className="w-12 h-12 rounded-xl bg-gramsure-navy flex items-center justify-center mx-auto mb-3">
              <span className="text-gramsure-gold font-bold text-lg">G</span>
            </div>
            <h1 className="text-2xl font-bold text-gramsure-navy">GramSure</h1>
          </div>

          <div className="hidden lg:block mb-8">
            <h1 className="text-3xl font-bold text-gramsure-navy">Welcome back</h1>
            <p className="text-sm text-gray-500 mt-2">Log in to manage your bakery.</p>
          </div>
          <p className="lg:hidden text-center text-sm text-gray-500 -mt-4 mb-8">
            Intelligent Bakery Management System
          </p>

          <form onSubmit={handleSubmit} className="space-y-5">
            <div>
              <label htmlFor="phone" className="block text-sm font-medium text-gray-700 mb-1.5">
                Phone Number
              </label>
              <div className="relative">
                <span className="absolute left-3.5 top-1/2 -translate-y-1/2 text-gray-400 pointer-events-none">
                  <Icon name="phone" />
                </span>
                <input
                  id="phone"
                  type="tel"
                  value={phone}
                  onChange={(e) => setPhone(e.target.value)}
                  placeholder="+92xxxxxxxxxx"
                  required
                  autoComplete="username"
                  className="w-full pl-10 pr-3 py-3 bg-white border border-gray-200 rounded-xl text-sm focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent transition-shadow"
                />
              </div>
            </div>

            <div>
              <label htmlFor="password" className="block text-sm font-medium text-gray-700 mb-1.5">
                Password
              </label>
              <div className="relative">
                <span className="absolute left-3.5 top-1/2 -translate-y-1/2 text-gray-400 pointer-events-none">
                  <Icon name="lock" />
                </span>
                <input
                  id="password"
                  type={showPassword ? 'text' : 'password'}
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  placeholder="Enter your password"
                  required
                  autoComplete="current-password"
                  className="w-full pl-10 pr-11 py-3 bg-white border border-gray-200 rounded-xl text-sm focus:outline-none focus:ring-2 focus:ring-gramsure-gold focus:border-transparent transition-shadow"
                />
                <button
                  type="button"
                  onClick={() => setShowPassword((v) => !v)}
                  className="absolute right-3 top-1/2 -translate-y-1/2 p-1 rounded-md text-gray-400 hover:text-gray-600 hover:bg-gray-100 transition-colors"
                  tabIndex={-1}
                  aria-label={showPassword ? 'Hide password' : 'Show password'}
                >
                  <Icon name={showPassword ? 'eyeOff' : 'eye'} />
                </button>
              </div>
            </div>

            {error && (
              <div
                role="alert"
                className="flex items-start gap-2.5 bg-red-50 border border-red-100 rounded-xl px-3.5 py-3"
              >
                <Icon name="alert" className="w-4 h-4 mt-0.5 shrink-0 text-red-500" />
                <p className="text-sm text-red-600">{error}</p>
              </div>
            )}

            <button
              type="submit"
              disabled={loading}
              className="w-full bg-gramsure-navy text-white font-semibold py-3 rounded-xl shadow-lg shadow-gramsure-navy/20 hover:bg-slate-800 active:scale-[0.99] transition-all disabled:opacity-60 disabled:active:scale-100 flex items-center justify-center gap-2"
            >
              {loading ? (
                <>
                  <span className="w-4 h-4 border-2 border-white/30 border-t-white rounded-full animate-spin" />
                  Logging in...
                </>
              ) : (
                'Log In'
              )}
            </button>
          </form>

          <p className="text-center text-xs text-gray-400 mt-10">
            © {new Date().getFullYear()} GramSure. All rights reserved.
          </p>
        </div>
      </div>
    </div>
  );
}