import 'package:flutter/material.dart';
import 'package:tract_it_app/screens/login.dart';
import '../widget/onboarding_slide.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          OnboardingSlide(
            imagePath: 'assets/img/she_with_phone 1.png',
            title: 'Protect your device',
            description:
                'Register your phone with its unique IMEI number to ensure your device is always protected. Stay ahead of potential theft and keep your peace of mind.',
            buttonText: 'Next',
            onButtonPressed: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
          OnboardingSlide(
            imagePath: 'assets/img/he_sitting_with_notebook 1.png',
            title: 'Verify before you buy',
            description:
                'Thinking of buying a used phone? Check the IMEI with Track It to make sure it hasn’t been reported as stolen. Avoid unwanted surprises and make smart purchases.',
            buttonText: 'Get Started',
            onButtonPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
