import 'package:flutter/material.dart';

import 'screens/profile_interests_screen.dart';

void main() {
  runApp(const ProfileInterestsApp());
}

class ProfileInterestsApp extends StatelessWidget {
  const ProfileInterestsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0671DF)),
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
        cardTheme: const CardThemeData(
          color: Colors.white,
          elevation: 1,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
      home: const ProfileInterestsScreen(),
    );
  }
}
