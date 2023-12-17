import 'package:flutter/material.dart';
import 'package:make_yum/src/views/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Make Yum',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xFF72AEDF, {
          50: Color(0xFFE1F2FA),
          100: Color(0xFFB4E0F2),
          200: Color(0xFF86CDEB),
          300: Color(0xFF59BBE3),
          400: Color(0xFF2CA8DC),
          500: Color(0xFF0096D4),
          600: Color(0xFF0082A9),
          700: Color(0xFF006E7E),
          800: Color(0xFF005A53),
          900: Color(0xFF004628),
        }),
      ),
      home: const OnboardingView(),
    );
  }
}
