import { useState, useRef, useContext, useEffect } from 'react';
import { View, Text, TouchableOpacity, StyleSheet, Alert, ActivityIndicator } from 'react-native';
import { CameraView, useCameraPermissions } from 'expo-camera';
import { useIsFocused } from '@react-navigation/native';
import { SafeAreaView } from 'react-native-safe-area-context';
import apiClient from '../../services/apiClient';
import { AuthContext } from '../../context/AuthContext';
import UrduLabel from '../../components/UrduLabel';

export default function FaceRegistrationScreen({ navigation }) {
  const [permission, requestPermission] = useCameraPermissions();
  const [capturing, setCapturing] = useState(false);
  const [showCamera, setShowCamera] = useState(false);
  const [cameraKey, setCameraKey] = useState(0);
  const cameraRef = useRef(null);
  const { user, logout } = useContext(AuthContext);
  const isFocused = useIsFocused();

  // Wait a moment after the screen opens, then start a fresh camera.
  // This avoids the black preview when the previous screen is still releasing the camera.
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

  if (!permission) {
    return (
      <SafeAreaView style={styles.safeArea}>
        <View style={styles.container} />
      </SafeAreaView>
    );
  }

  if (!permission.granted) {
    return (
      <SafeAreaView style={styles.safeArea}>
        <View style={styles.centeredContainer}>
          <View style={styles.permissionCard}>
            <Text style={styles.permissionIcon}>📷</Text>
            <Text style={styles.message}>We need camera access to register your face.</Text>
            <TouchableOpacity style={styles.button} onPress={requestPermission} activeOpacity={0.85}>
              <Text style={styles.buttonText}>Grant Permission</Text>
            </TouchableOpacity>
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

      await apiClient.post('/staff/face/register', {
        imageBase64: photo.base64,
      });

      Alert.alert(
        '✅ Face Registered',
        'Your face has been registered successfully. You can now use selfie check-in.',
        [{ text: 'OK', onPress: () => navigation.goBack() }]
      );
    } catch (err) {
      Alert.alert(
        '❌ Registration Failed',
        err.response?.data?.message || 'Could not detect a face clearly. Please try again with good lighting.'
      );
    } finally {
      setCapturing(false);
    }
  }

  return (
    <SafeAreaView style={styles.safeArea}>
      <View style={styles.container}>
        <View style={styles.headerRow}>
          {navigation.canGoBack() ? (
            <TouchableOpacity onPress={() => navigation.goBack()} style={styles.backButton} activeOpacity={0.8}>
              <Text style={styles.backText}>‹ Back</Text>
            </TouchableOpacity>
          ) : (
            <View style={{ width: 60 }} />
          )}
          <TouchableOpacity onPress={handleLogoutPress} style={styles.logoutButton} activeOpacity={0.8}>
            <Text style={styles.logoutText}>Log Out</Text>
          </TouchableOpacity>
        </View>

        <UrduLabel text="Chehra register karen" english="Register Your Face" style={styles.title} />
        <Text style={styles.subtitle}>
          This is a one-time setup, {user?.name}. Look straight at the camera in good lighting.
        </Text>

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
          {capturing ? <ActivityIndicator color="#1e293b" /> : <Text style={styles.buttonText}>📸 Capture & Register</Text>}
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
    marginBottom: 16,
  },
  backButton: { paddingVertical: 7, paddingHorizontal: 4 },
  backText: { color: '#cbd5e1', fontSize: 14, fontWeight: '600' },
  logoutButton: { backgroundColor: 'rgba(254,226,226,0.95)', paddingHorizontal: 14, paddingVertical: 7, borderRadius: 10 },
  logoutText: { color: '#dc2626', fontWeight: '700', fontSize: 12 },
  title: { color: '#fff', textAlign: 'center', marginBottom: 8, fontSize: 18, fontWeight: '600' },
  subtitle: { color: '#94a3b8', textAlign: 'center', fontSize: 13, marginBottom: 16, paddingHorizontal: 12, lineHeight: 18 },
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
});