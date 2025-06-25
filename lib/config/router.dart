import 'package:flutter/material.dart';

// Auth Screens
import 'package:prototico_twoo/screens/auth/login_animated_screen.dart';
import 'package:prototico_twoo/screens/auth/register_screen.dart';
import 'package:prototico_twoo/screens/auth/forgot_password_screen.dart';
import 'package:prototico_twoo/screens/auth/verification_code_screen.dart';
import 'package:prototico_twoo/screens/auth/reset_password_screen.dart';
import 'package:prototico_twoo/screens/home/home_screen.dart';
import 'package:prototico_twoo/screens/settings/about_screen.dart';
import 'package:prototico_twoo/screens/settings/contact_screen.dart';
import 'package:prototico_twoo/screens/settings/privacy_policy_screen.dart';
import 'package:prototico_twoo/screens/settings/settings_screen.dart';
import 'package:prototico_twoo/screens/settings/terms_of_use_screen.dart';

// Main Navigation Screen (com appbar e bottom nav)
import 'package:prototico_twoo/widgets/main_navigation_screen.dart';

class AppRouter {
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String verificationCode = '/verification-code';
  static const String resetPassword = '/reset-password';

  static const String mainNav = '/main';

  static const String home = '/home';
  static const String settings = '/settings';
  static const String about = '/about';
  static const String privacyPolicy = '/privacy-policy';
  static const String termsOfUse = '/terms-of-use';
  static const String contact = '/contact';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Telas sem AppBar nem BottomNavigationBar
      case AppRouter.login:
        return MaterialPageRoute(builder: (_) => const LoginAnimatedScreen());
      case AppRouter.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case AppRouter.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case AppRouter.verificationCode:
        return MaterialPageRoute(
            builder: (_) => const VerificationCodeScreen());
      case AppRouter.resetPassword:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());

      // Tela principal com AppBar e BottomNavigationBar
      case AppRouter.mainNav:
        return MaterialPageRoute(builder: (_) => const MainNavigationScreen());

      // Rotas para telas avulsas
      case AppRouter.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRouter.settings:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case AppRouter.about:
        return MaterialPageRoute(builder: (_) => const AboutScreen());
      case AppRouter.privacyPolicy:
        return MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen());
      case AppRouter.termsOfUse:
        return MaterialPageRoute(builder: (_) => const TermsOfUseScreen());
      case AppRouter.contact:
        return MaterialPageRoute(builder: (_) => const ContactScreen());

      // Fallback
      default:
        return MaterialPageRoute(builder: (_) => const LoginAnimatedScreen());
    }
  }
}
