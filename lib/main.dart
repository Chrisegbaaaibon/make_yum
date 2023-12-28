import 'package:flutter/material.dart';
import 'package:make_yum/src/views/home_view.dart';

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
      home: const HomeView(),
      // home: const OnboardingView(),
      // routes: {
      //   '/home': (context) => const HomeView(),
      //   '/search': (context) => const SearchView(),
      //   '/profile': (context) => const ProfileView(),
      // },
    );
  }
}
