import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../utils/colors.dart';
import '../widget/input.dart';
import '../widget/registered_device_list.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
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
                          height: 400,
                          decoration: const BoxDecoration(
                            color: primary,
                            image: DecorationImage(
                              image: AssetImage('assets/img/header.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 100,
                                left: 15,
                                right: 15,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Hello Jethro,",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: 'Bold',
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            RichText(
                                              text: const TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'You have made ',
                                                    style: TextStyle(
                                                      color: faintTextColor,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '₦25,000 ',
                                                    style: TextStyle(
                                                      color: secondary,
                                                      fontSize: 13,
                                                      fontFamily: 'Bold',
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'from Track it',
                                                    style: TextStyle(
                                                      color: faintTextColor,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(13),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: const Color(0xFF334041),
                                              width: 2.0,
                                            ),
                                          ),
                                          child: const Icon(
                                            LucideIcons.bell,
                                            size: 24.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    const Text(
                                              "Verify a Device",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: 'Bold',
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                    const CustomInputField(
                                      labelText: 'Enter device IMEI',
                                      isPassword: false,
                                      isSearch: true,
                                      isReadOnly: true
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: -110,
                          left: 15,
                          right: 15,
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: const Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Registered Devices",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Bold',
                                        color: textColor
                                      ),
                                    ),
                                    Text(
                                      "View all",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Bold',
                                        color: secondary
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                RegisteredDevice(
                                  imagePath: 'assets/img/icon.png',
                                  deviceName: 'Redmi Pro XC',
                                  imei: '123456789012345',
                                  status: true,
                                ),
                                RegisteredDevice(
                                  imagePath: 'assets/img/icon.png',
                                  deviceName: 'Infinix Hot 9',
                                  imei: '123456789012345',
                                  status: false,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 80),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                    ),
                    const Spacer(),
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
