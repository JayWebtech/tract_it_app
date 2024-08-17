import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tract_it_app/screens/dashboard.dart';
import 'package:tract_it_app/screens/homescreen.dart';
import 'package:tract_it_app/screens/onboarding.dart';

int? isviewed;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
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
          nextScreen:  isviewed != 0 ? const Onboarding() :  HomeScreen(),
          //nextScreen: const Onboarding(),
          splashTransition: SplashTransition.scaleTransition,
        ),
      ],
    );
  }
}
