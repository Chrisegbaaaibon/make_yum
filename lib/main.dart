import 'package:flutter/material.dart';
import 'package:make_yum/src/views/home_rafe.dart';
import 'package:make_yum/src/views/onboarding_view.dart';
import 'package:make_yum/src/views/home_view.dart';
import 'package:make_yum/src/views/search_view.dart';
import 'package:make_yum/src/views/profile_view.dart';

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
        primaryColor: const Color(0xFFE1F2FA),
      ),
      home: const HomeScreenRafe(),
      // home: const OnboardingView(),
      // routes: {
      //   '/home': (context) => const HomeView(),
      //   '/search': (context) => const SearchView(),
      //   '/profile': (context) => const ProfileView(),
      // },
    );
  }
}
