import 'package:flutter/material.dart';
import 'package:tract_it_app/screens/login.dart';

import '../utils/colors.dart';
import '../widget/custom_buttons.dart';
import '../widget/input.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 150,
                          decoration: const BoxDecoration(
                            color: primary,
                            image: DecorationImage(
                              image: AssetImage('assets/img/header.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -50,
                          left: 20,
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: primary,
                              border: Border.all(
                                color: Colors.white,
                                width: 4.0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage('assets/img/logo.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 80),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 27,
                              fontFamily: 'Bold',
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Register to protect your device.",
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Regular',
                              color: faintTextColor,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 20),
                          CustomInputField(
                            labelText: 'Enter your name',
                            isPassword: false,
                          ),
                          const SizedBox(height: 20),
                          CustomInputField(
                            labelText: 'Enter your email',
                            isPassword: false,
                          ),
                          const SizedBox(height: 20),
                          CustomInputField(
                            labelText: 'Enter your phone number',
                            isPassword: false,
                          ),
                          const SizedBox(height: 20),
                          CustomInputField(
                            labelText: 'Password',
                            isPassword: true,
                          ),
                          const SizedBox(height: 32),
                          CustomButton(
                            text: "Sign up",
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account? ",
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Regular',
                              color: faintTextColor,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()),
                              );
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Bold',
                                color: secondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}