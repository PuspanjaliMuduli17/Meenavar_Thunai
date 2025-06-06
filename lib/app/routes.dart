import 'package:flutter/material.dart';
import '../presentation/views/splash_screen.dart';
import '../presentation/views/auth/login_screen.dart';
import '../presentation/views/auth/register_screen.dart';
import '../presentation/views/dashboard/dashboard_screen.dart';
import'../screens/chat_screen.dart';

class AppRoutes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String dashboard = '/dashboard';
  static const String chat = '/chat';

  static Map<String, Widget Function(BuildContext)> get routes => {
    splash: (_) => const SplashScreen(),
    login: (_) => const LoginScreen(),
    register: (_) => const RegisterScreen(),
    dashboard: (_) => const DashboardScreen(),
    chat: (_) => const ChatScreen(), 
  };

  static void resetToDashboard(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(dashboard, (route) => false);
  }
}
