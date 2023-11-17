import 'package:flutter/material.dart';
import 'package:grocerease/screens/splash_screen/splash_screen.dart';
import 'package:grocerease/screens/onboarding_screen/onboarding_screen.dart';
import 'package:grocerease/screens/google_maps/location.dart';
import 'package:grocerease/screens/login_screen/login_page.dart';
import 'package:grocerease/screens/dashboard/dashboard_screen.dart';
import 'package:grocerease/screens/about_us/about_us.dart';
import 'package:grocerease/screens/terms_and_condition/terms_and_conditions.dart';
import 'package:grocerease/screens/privacy_policy/privacy_policy.dart';
import 'package:grocerease/screens/contact_us/customer_support_page.dart';
import 'package:grocerease/screens/register_screen/register_screen.dart';
import 'package:grocerease/screens/feedback/feedback.dart';
import 'package:grocerease/screens/account/account_screen.dart';
import 'package:grocerease/styles/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/location': (context) => const LocationScreen(),
        '/home': (context) => const DashboardScreen(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const SignUpScreen(),
        '/loginpage': (context) => const LoginPage(),
        '/accountscreen': (context) => const AccountScreen(),
        '/aboutuspage': (context) => const AboutUsPage(),
        '/privacyscreen': (context) => const PrivacyPolicyPage(),
        '/termsandconditions': (context) => const TermsAndConditionsScreen(),
         '/contactus': (context) => const SupportPage(),
         '/feedbackpage': (context) => const FeedbackScreen(),






      },
    );
  }
}