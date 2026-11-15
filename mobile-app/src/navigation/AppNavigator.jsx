import { useContext } from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import { ActivityIndicator, View, Text, StyleSheet } from 'react-native';
import { Ionicons } from '@expo/vector-icons';

import { AuthContext } from '../context/AuthContext';

import LoginScreen from '../screens/staff/LoginScreen';
import SelfieCheckInScreen from '../screens/staff/SelfieCheckInScreen';
import ProductionEntryScreen from '../screens/staff/ProductionEntryScreen';
import SalesEntryScreen from '../screens/staff/SalesEntryScreen';
import ExpenseEntryScreen from '../screens/staff/ExpenseEntryScreen';
import MySalaryScreen from '../screens/staff/MySalaryScreen'; // NEW
import FaceRegistrationScreen from '../screens/staff/FaceRegistrationScreen';
import DashboardScreen from '../screens/owner/DashboardScreen';
import FraudAlertScreen from '../screens/owner/FraudAlertScreen';
import ExpenseApprovalScreen from '../screens/owner/ExpenseApprovalScreen';
import StockOrderScreen from '../screens/owner/StockOrderScreen';
import AttendanceScreen from '../screens/owner/AttendanceScreen'; // NEW

const Stack = createNativeStackNavigator();
const Tab = createBottomTabNavigator();

const TAB_BAR_STYLE = {
  backgroundColor: '#1e293b',
  borderTopWidth: 0,
  height: 62,
  paddingTop: 6,
  paddingBottom: 8,
  elevation: 12,
  shadowColor: '#000',
  shadowOffset: { width: 0, height: -2 },
  shadowOpacity: 0.1,
  shadowRadius: 8,
};

const TAB_LABEL_STYLE = { fontSize: 11, fontWeight: '600' };

const sharedTabScreenOptions = {
  headerShown: false,
  tabBarActiveTintColor: '#f59e0b',
  tabBarInactiveTintColor: '#94a3b8',
  tabBarStyle: TAB_BAR_STYLE,
  tabBarLabelStyle: TAB_LABEL_STYLE,
};

function StaffTabs() {
  return (
    <Tab.Navigator screenOptions={sharedTabScreenOptions}>
      <Tab.Screen
        name="CheckIn"
        component={SelfieCheckInScreen}
        options={{
          tabBarLabel: 'Check In',
          tabBarIcon: ({ color, size, focused }) => (
            <Ionicons name={focused ? 'camera' : 'camera-outline'} size={size} color={color} />
          ),
        }}
      />
      <Tab.Screen
        name="Production"
        component={ProductionEntryScreen}
        options={{
          tabBarLabel: 'Production',
          tabBarIcon: ({ color, size, focused }) => (
            <Ionicons name={focused ? 'cube' : 'cube-outline'} size={size} color={color} />
          ),
        }}
      />
      <Tab.Screen
        name="Sales"
        component={SalesEntryScreen}
        options={{
          tabBarLabel: 'Sales',
          tabBarIcon: ({ color, size, focused }) => (
            <Ionicons name={focused ? 'cash' : 'cash-outline'} size={size} color={color} />
          ),
        }}
      />
      <Tab.Screen
        name="Expenses"
        component={ExpenseEntryScreen}
        options={{
          tabBarLabel: 'Expenses',
          tabBarIcon: ({ color, size, focused }) => (
            <Ionicons name={focused ? 'receipt' : 'receipt-outline'} size={size} color={color} />
          ),
        }}
      />
      {/* NEW: staff salary slips */}
      <Tab.Screen
        name="MySalary"
        component={MySalaryScreen}
        options={{
          tabBarLabel: 'Salary',
          tabBarIcon: ({ color, size, focused }) => (
            <Ionicons name={focused ? 'wallet' : 'wallet-outline'} size={size} color={color} />
          ),
        }}
      />
    </Tab.Navigator>
  );
}

function StaffStack() {
  return (
    <Stack.Navigator screenOptions={{ headerShown: false }}>
      <Stack.Screen name="StaffTabs" component={StaffTabs} />
      <Stack.Screen name="FaceRegistration" component={FaceRegistrationScreen} />
    </Stack.Navigator>
  );
}

function OwnerTabs() {
  return (
    <Tab.Navigator screenOptions={sharedTabScreenOptions}>
      <Tab.Screen
        name="Dashboard"
        component={DashboardScreen}
        options={{
          tabBarIcon: ({ color, size, focused }) => (
            <Ionicons name={focused ? 'grid' : 'grid-outline'} size={size} color={color} />
          ),
        }}
      />
      <Tab.Screen
        name="FraudAlerts"
        component={FraudAlertScreen}
        options={{
          tabBarLabel: 'Fraud',
          tabBarIcon: ({ color, size, focused }) => (
            <Ionicons name={focused ? 'warning' : 'warning-outline'} size={size} color={color} />
          ),
        }}
      />
      <Tab.Screen
        name="ExpenseApproval"
        component={ExpenseApprovalScreen}
        options={{
          tabBarLabel: 'Expenses',
          tabBarIcon: ({ color, size, focused }) => (
            <Ionicons name={focused ? 'receipt' : 'receipt-outline'} size={size} color={color} />
          ),
        }}
      />
      <Tab.Screen
        name="StockOrder"
        component={StockOrderScreen}
        options={{
          tabBarLabel: 'Stock',
          tabBarIcon: ({ color, size, focused }) => (
            <Ionicons name={focused ? 'cube' : 'cube-outline'} size={size} color={color} />
          ),
        }}
      />
      {/* NEW: attendance, selfie proof and salary slips */}
      <Tab.Screen
        name="Attendance"
        component={AttendanceScreen}
        options={{
          tabBarLabel: 'Staff',
          tabBarIcon: ({ color, size, focused }) => (
            <Ionicons name={focused ? 'people' : 'people-outline'} size={size} color={color} />
          ),
        }}
      />
    </Tab.Navigator>
  );
}

export default function AppNavigator() {
  const { user, loading, isAuthenticated } = useContext(AuthContext);

  if (loading) {
    return (
      <View style={styles.loadingContainer}>
        <View style={styles.loadingLogo}>
          <Text style={styles.loadingLogoText}>G</Text>
        </View>
        <ActivityIndicator size="large" color="#f59e0b" style={{ marginTop: 20 }} />
      </View>
    );
  }

  return (
    <NavigationContainer>
      <Stack.Navigator screenOptions={{ headerShown: false }}>
        {!isAuthenticated ? (
          <Stack.Screen name="Login" component={LoginScreen} />
        ) : user?.role === 'owner' || user?.role === 'manager' ? (
          <Stack.Screen name="OwnerApp" component={OwnerTabs} />
        ) : (
          <Stack.Screen name="StaffApp" component={StaffStack} />
        )}
      </Stack.Navigator>
    </NavigationContainer>
  );
}

const styles = StyleSheet.create({
  loadingContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#1e293b',
  },
  loadingLogo: {
    width: 64,
    height: 64,
    borderRadius: 18,
    backgroundColor: '#f59e0b',
    alignItems: 'center',
    justifyContent: 'center',
  },
  loadingLogoText: {
    color: '#1e293b',
    fontSize: 28,
    fontWeight: 'bold',
  },
});