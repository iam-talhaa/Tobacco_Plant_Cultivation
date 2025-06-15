import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const TobaccoApp());
}

class TobaccoApp extends StatelessWidget {
  const TobaccoApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Main Screen ");
    return MaterialApp(
      title: 'Tobacco Disease Detector',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: Typography.blackMountainView,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
