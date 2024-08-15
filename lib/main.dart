import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tract_it_app/screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Track it',
      theme: ThemeData(fontFamily: 'Regular'),
      home: const SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/img/lines.png',
            fit: BoxFit.fill,
          ),
        ),
        AnimatedSplashScreen(
          backgroundColor:
              Colors.transparent,
          duration: 3000,
          splashIconSize: 150,
          splash: Column(
            children: [
              Image.asset(
                'assets/img/logo.png',
                scale: 4,
              ),
            ],
          ),
          nextScreen: const Onboarding(),
          splashTransition: SplashTransition.scaleTransition,
        ),
      ],
    );
  }
}
