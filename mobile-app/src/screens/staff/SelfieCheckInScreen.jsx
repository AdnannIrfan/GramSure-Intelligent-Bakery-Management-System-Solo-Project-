import { useState, useRef, useContext, useEffect, useCallback } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  Alert,
  ActivityIndicator,
  TextInput,
} from 'react-native';
import { CameraView, useCameraPermissions } from 'expo-camera';
import { useIsFocused } from '@react-navigation/native';
import { SafeAreaView } from 'react-native-safe-area-context';
import apiClient from '../../services/apiClient';
import { AuthContext } from '../../context/AuthContext';
import UrduLabel from '../../components/UrduLabel';

function formatTime(value) {
  if (!value) return '';
  const d = new Date(value);
  if (Number.isNaN(d.getTime())) return '';
  let h = d.getHours();
  const m = String(d.getMinutes()).padStart(2, '0');
  const ampm = h >= 12 ? 'PM' : 'AM';
  h = h % 12 || 12;
  return `${h}:${m} ${ampm}`;
}

function hoursBetween(from, to) {
  const ms = new Date(to) - new Date(from);
  if (!Number.isFinite(ms) || ms < 0) return '0.0';
  return (ms / 3600000).toFixed(1);
}

export default function SelfieCheckInScreen({ navigation }) {
  const [permission, requestPermission] = useCameraPermissions();
  const [capturing, setCapturing] = useState(false);
  const [mode, setMode] = useState('selfie'); // 'selfie' | 'pin'
  const [pin, setPin] = useState('');
  const [status, setStatus] = useState(null); // { checkedIn, attendance }
  const [checkingOut, setCheckingOut] = useState(false);
  const [showCamera, setShowCamera] = useState(false);
  const [cameraKey, setCameraKey] = useState(0);
  const cameraRef = useRef(null);
  const { user, logout } = useContext(AuthContext);
  const isFocused = useIsFocused();

  const loadStatus = useCallback(async () => {
    try {
      const { data } = await apiClient.get('/staff/attendance/my-status');
      setStatus(data.data);
    } catch (err) {
      // If this fails, fall back to showing the normal check-in screen
      setStatus({ checkedIn: false, attendance: null });
    }
  }, []);

  useEffect(() => {
    if (isFocused) loadStatus();
  }, [isFocused, loadStatus]);

  // Start a fresh camera shortly after the screen is shown, and release it when leaving.
  // This avoids a black preview when two camera screens overlap.
  useEffect(() => {
    if (!isFocused) {
      setShowCamera(false);
      return undefined;
    }
    const timer = setTimeout(() => {
      setCameraKey((k) => k + 1);
      setShowCamera(true);
    }, 600);
    return () => clearTimeout(timer);
  }, [isFocused]);

  function handleLogoutPress() {
    Alert.alert('Log Out', `Are you sure you want to log out, ${user?.name || ''}?`, [
      { text: 'Cancel', style: 'cancel' },
      { text: 'Log Out', style: 'destructive', onPress: logout },
    ]);
  }

  // Release the camera first, then open the registration screen
  function goToRegistration() {
    setShowCamera(false);
    setTimeout(() => navigation.navigate('FaceRegistration'), 250);
  }

  function getCurrentShift() {
    const hour = new Date().getHours();
    return hour < 14 ? 'morning' : hour < 20 ? 'afternoon' : 'evening';
  }

  const shiftLabel = { morning: 'Morning Shift', afternoon: 'Afternoon Shift', evening: 'Evening Shift' }[getCurrentShift()];

  const checkedIn = !!status?.checkedIn;
  const needsCamera = mode === 'selfie' && !checkedIn;

  // Header row + the Selfie / PIN switch, shown at the top of every check-in screen
  function renderTop() {
    return (
      <View>
        <View style={styles.headerRow}>
          <View style={styles.shiftBadge}>
            <View style={styles.shiftDot} />
            <Text style={styles.shiftText}>{shiftLabel}</Text>
          </View>
          <TouchableOpacity onPress={handleLogoutPress} style={styles.logoutButton} activeOpacity={0.8}>
            <Text style={styles.logoutText}>Log Out</Text>
          </TouchableOpacity>
        </View>

        <View style={styles.modeRow}>
          <TouchableOpacity
            style={[styles.modeButton, mode === 'selfie' && styles.modeButtonActive]}
            onPress={() => setMode('selfie')}
            activeOpacity={0.85}
          >
            <Text style={[styles.modeText, mode === 'selfie' && styles.modeTextActive]}>📸 Selfie</Text>
          </TouchableOpacity>
          <TouchableOpacity
            style={[styles.modeButton, mode === 'pin' && styles.modeButtonActive]}
            onPress={() => setMode('pin')}
            activeOpacity={0.85}
          >
            <Text style={[styles.modeText, mode === 'pin' && styles.modeTextActive]}>🔢 PIN</Text>
          </TouchableOpacity>
        </View>
      </View>
    );
  }

  if (!status) {
    return (
      <SafeAreaView style={styles.safeArea}>
        <View style={styles.centeredContainer}>
          <ActivityIndicator size="large" color="#f59e0b" />
        </View>
      </SafeAreaView>
    );
  }

  if (needsCamera && !permission) {
    return (
      <SafeAreaView style={styles.safeArea}>
        <View style={styles.container} />
      </SafeAreaView>
    );
  }

  if (needsCamera && !permission.granted) {
    return (
      <SafeAreaView style={styles.safeArea}>
        <View style={styles.container}>
          {renderTop()}
          <View style={styles.centeredContainer}>
            <View style={styles.permissionCard}>
              <Text style={styles.permissionIcon}>📷</Text>
              <Text style={styles.message}>We need camera access for selfie check-in.</Text>
              <TouchableOpacity style={styles.button} onPress={requestPermission} activeOpacity={0.85}>
                <Text style={styles.buttonText}>Grant Permission</Text>
              </TouchableOpacity>
            </View>
          </View>
        </View>
      </SafeAreaView>
    );
  }

  async function handleCapture() {
    if (!cameraRef.current || !showCamera) return;
    setCapturing(true);
    try {
      const photo = await cameraRef.current.takePictureAsync({ base64: true, quality: 0.5 });

      const { data } = await apiClient.post('/staff/attendance/check-in', {
        method: 'selfie',
        imageBase64: photo.base64,
        shift: getCurrentShift(),
      });

      const score = Number(data.data.face_match_score);
      Alert.alert(
        '✅ Checked In',
        `Welcome, ${user?.name}!${Number.isFinite(score) ? ` Match score: ${(score * 100).toFixed(0)}%` : ''}`
      );
      loadStatus();
    } catch (err) {
      const message = err.response?.data?.message || 'Face verification failed. Please try again.';
      const needsRegistration = message.toLowerCase().includes('no registered face profile');

      if (needsRegistration) {
        Alert.alert(
          'Face Not Registered',
          "You haven't registered your face yet. Let's set that up first.",
          [
            { text: 'Cancel', style: 'cancel' },
            { text: 'Register Now', onPress: goToRegistration },
          ]
        );
      } else {
        Alert.alert('❌ Check-In Failed', message);
      }
    } finally {
      setCapturing(false);
    }
  }

  async function handlePinCheckIn() {
    if (!/^\d{4,6}$/.test(pin)) {
      Alert.alert('Enter your PIN', 'Your PIN is 4 to 6 digits.');
      return;
    }
    setCapturing(true);
    try {
      await apiClient.post('/staff/attendance/check-in', {
        method: 'pin',
        pin,
        shift: getCurrentShift(),
      });
      setPin('');
      Alert.alert('✅ Checked In', `Welcome, ${user?.name}!`);
      loadStatus();
    } catch (err) {
      setPin('');
      Alert.alert('❌ Check-In Failed', err.response?.data?.message || 'Please try again.');
    } finally {
      setCapturing(false);
    }
  }

  function confirmCheckOut() {
    Alert.alert('Check Out', 'End your shift now?', [
      { text: 'Cancel', style: 'cancel' },
      { text: 'Check Out', onPress: handleCheckOut },
    ]);
  }

  async function handleCheckOut() {
    setCheckingOut(true);
    try {
      const { data } = await apiClient.post('/staff/attendance/check-out');
      const log = data.data;
      Alert.alert('✅ Checked Out', `You worked ${hoursBetween(log.check_in_time, log.check_out_time)} hours. Good work!`);
      loadStatus();
    } catch (err) {
      Alert.alert('❌ Check-Out Failed', err.response?.data?.message || 'Please try again.');
    } finally {
      setCheckingOut(false);
    }
  }

  /* ---------- already checked in ---------- */
  if (checkedIn) {
    const log = status.attendance;
    return (
      <SafeAreaView style={styles.safeArea}>
        <View style={styles.container}>
          <View style={styles.headerRow}>
            <View style={styles.shiftBadge}>
              <View style={[styles.shiftDot, { backgroundColor: '#22c55e' }]} />
              <Text style={styles.shiftText}>On shift</Text>
            </View>
            <TouchableOpacity onPress={handleLogoutPress} style={styles.logoutButton} activeOpacity={0.8}>
              <Text style={styles.logoutText}>Log Out</Text>
            </TouchableOpacity>
          </View>

          <View style={styles.statusCard}>
            <Text style={styles.statusIcon}>✅</Text>
            <Text style={styles.statusTitle}>You are checked in</Text>
            <Text style={styles.statusLine}>Since {formatTime(log?.check_in_time)}</Text>
            {!!log?.shift && <Text style={styles.statusLine}>{log.shift} shift</Text>}
            <Text style={styles.statusLine}>
              {hoursBetween(log?.check_in_time, new Date())} hours so far
            </Text>
          </View>

          <TouchableOpacity
            style={[styles.checkoutButton, checkingOut && styles.buttonDisabled]}
            onPress={confirmCheckOut}
            disabled={checkingOut}
            activeOpacity={0.85}
          >
            {checkingOut ? <ActivityIndicator color="#fff" /> : <Text style={styles.checkoutText}>Check Out</Text>}
          </TouchableOpacity>
        </View>
      </SafeAreaView>
    );
  }

  /* ---------- PIN check-in ---------- */
  if (mode === 'pin') {
    return (
      <SafeAreaView style={styles.safeArea}>
        <View style={styles.container}>
          {renderTop()}

          <UrduLabel text="PIN se hazri lagayen" english="Check in with your PIN" style={styles.title} />

          <TextInput
            style={styles.pinInput}
            value={pin}
            onChangeText={(v) => setPin(v.replace(/\D/g, '').slice(0, 6))}
            keyboardType="number-pad"
            secureTextEntry
            maxLength={6}
            placeholder="••••"
            placeholderTextColor="#64748b"
          />

          <TouchableOpacity
            style={[styles.button, capturing && styles.buttonDisabled]}
            onPress={handlePinCheckIn}
            disabled={capturing}
            activeOpacity={0.85}
          >
            {capturing ? <ActivityIndicator color="#1e293b" /> : <Text style={styles.buttonText}>Check In with PIN</Text>}
          </TouchableOpacity>
        </View>
      </SafeAreaView>
    );
  }

  /* ---------- selfie check-in ---------- */
  return (
    <SafeAreaView style={styles.safeArea}>
      <View style={styles.container}>
        {renderTop()}

        <UrduLabel text="Selfie se hazri lagayen" english="Check in with a selfie" style={styles.title} />

        <View style={styles.cameraWrapper}>
          {isFocused && showCamera ? (
            <CameraView key={cameraKey} ref={cameraRef} style={styles.camera} facing="front" />
          ) : (
            <View style={[styles.camera, styles.cameraLoading]}>
              <ActivityIndicator color="#f59e0b" />
            </View>
          )}
          <View style={styles.cameraFrame} pointerEvents="none" />
        </View>

        <TouchableOpacity
          style={[styles.button, (capturing || !showCamera) && styles.buttonDisabled]}
          onPress={handleCapture}
          disabled={capturing || !showCamera}
          activeOpacity={0.85}
        >
          {capturing ? <ActivityIndicator color="#1e293b" /> : <Text style={styles.buttonText}>📸 Capture & Check In</Text>}
        </TouchableOpacity>

        <TouchableOpacity onPress={goToRegistration} style={styles.registerLink}>
          <Text style={styles.registerLinkText}>First time? Register your face</Text>
        </TouchableOpacity>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  safeArea: { flex: 1, backgroundColor: '#1e293b' },
  container: { flex: 1, padding: 20 },
  centeredContainer: { flex: 1, padding: 20, justifyContent: 'center', alignItems: 'center' },
  headerRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    alignItems: 'center',
    marginBottom: 14,
  },
  shiftBadge: {
    flexDirection: 'row',
    alignItems: 'center',
    backgroundColor: 'rgba(255,255,255,0.08)',
    paddingHorizontal: 10,
    paddingVertical: 6,
    borderRadius: 20,
    gap: 6,
  },
  shiftDot: { width: 6, height: 6, borderRadius: 3, backgroundColor: '#f59e0b' },
  shiftText: { color: '#e2e8f0', fontSize: 12, fontWeight: '600' },
  logoutButton: { backgroundColor: 'rgba(254,226,226,0.95)', paddingHorizontal: 14, paddingVertical: 7, borderRadius: 10 },
  logoutText: { color: '#dc2626', fontWeight: '700', fontSize: 12 },

  modeRow: { flexDirection: 'row', gap: 8, marginBottom: 16 },
  modeButton: {
    flex: 1,
    paddingVertical: 11,
    borderRadius: 12,
    alignItems: 'center',
    backgroundColor: '#334155',
  },
  modeButtonActive: { backgroundColor: '#f59e0b' },
  modeText: { color: '#cbd5e1', fontWeight: '700', fontSize: 14 },
  modeTextActive: { color: '#1e293b' },

  title: { color: '#fff', textAlign: 'center', marginBottom: 14, fontSize: 18, fontWeight: '600' },
  cameraWrapper: { position: 'relative', marginBottom: 16 },
  camera: { width: '100%', aspectRatio: 3 / 4, borderRadius: 20, overflow: 'hidden', maxHeight: 380 },
  cameraLoading: { backgroundColor: '#0f172a', alignItems: 'center', justifyContent: 'center' },
  cameraFrame: {
    position: 'absolute',
    top: 0, left: 0, right: 0, bottom: 0,
    borderRadius: 20,
    borderWidth: 2,
    borderColor: 'rgba(245,158,11,0.4)',
  },
  button: { backgroundColor: '#f59e0b', borderRadius: 14, paddingVertical: 16, alignItems: 'center' },
  buttonDisabled: { opacity: 0.6 },
  buttonText: { color: '#1e293b', fontWeight: 'bold', fontSize: 16 },
  permissionCard: { alignItems: 'center', backgroundColor: 'rgba(255,255,255,0.06)', padding: 28, borderRadius: 20 },
  permissionIcon: { fontSize: 40, marginBottom: 12 },
  message: { color: '#fff', textAlign: 'center', marginBottom: 18, fontSize: 14 },
  registerLink: { marginTop: 16, alignItems: 'center' },
  registerLinkText: { color: '#94a3b8', fontSize: 13, textDecorationLine: 'underline' },

  pinInput: {
    backgroundColor: '#fff',
    borderRadius: 14,
    paddingVertical: 16,
    paddingHorizontal: 16,
    fontSize: 28,
    letterSpacing: 10,
    textAlign: 'center',
    color: '#1e293b',
    marginBottom: 20,
  },

  statusCard: {
    alignItems: 'center',
    backgroundColor: 'rgba(255,255,255,0.06)',
    borderRadius: 20,
    padding: 28,
    marginBottom: 24,
  },
  statusIcon: { fontSize: 40, marginBottom: 10 },
  statusTitle: { color: '#fff', fontSize: 20, fontWeight: 'bold', marginBottom: 10 },
  statusLine: { color: '#cbd5e1', fontSize: 14, marginTop: 2, textTransform: 'capitalize' },
  checkoutButton: { backgroundColor: '#dc2626', borderRadius: 14, paddingVertical: 16, alignItems: 'center' },
  checkoutText: { color: '#fff', fontWeight: 'bold', fontSize: 16 },
});