import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileInterestsApp());
}

class ProfileInterestsApp extends StatelessWidget {
  const ProfileInterestsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF8F9FA),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: const Center(
              child: Text('Profile'),
            ),
          ),
        ),
      ),
    );
  }
}
