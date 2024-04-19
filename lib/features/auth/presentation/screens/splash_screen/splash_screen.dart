
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:wegro/resources/colors/black.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "WeGro",
            style: TextStyle(color: Black.dark100, fontSize: 40, fontWeight: FontWeight.bold),
          ).animate().fade(duration: const Duration(milliseconds: 300)),
        ),
      ),
    );
  }
}
