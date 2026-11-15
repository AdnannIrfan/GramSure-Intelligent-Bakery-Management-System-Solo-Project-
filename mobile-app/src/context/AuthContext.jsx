import { createContext, useState, useEffect } from 'react';
import AsyncStorage from '@react-native-async-storage/async-storage';
import apiClient from '../services/apiClient';

export const AuthContext = createContext(null);

export function AuthProvider({ children }) {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadUserFromToken();
  }, []);

  async function loadUserFromToken() {
    const token = await AsyncStorage.getItem('gramsure_access_token');
    if (!token) {
      setLoading(false);
      return;
    }
    try {
      const { data } = await apiClient.get('/auth/me');
      setUser(data.data);
    } catch (err) {
      await AsyncStorage.clear();
      setUser(null);
    } finally {
      setLoading(false);
    }
  }

  async function login(phone, password) {
    const { data } = await apiClient.post('/auth/login', { phone, password });
    const { user: loggedInUser, accessToken, refreshToken } = data.data;

    await AsyncStorage.setItem('gramsure_access_token', accessToken);
    await AsyncStorage.setItem('gramsure_refresh_token', refreshToken);
    setUser(loggedInUser);

    return loggedInUser;
  }

  async function logout() {
    await AsyncStorage.clear();
    setUser(null);
  }

  const value = { user, loading, login, logout, isAuthenticated: !!user };

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

