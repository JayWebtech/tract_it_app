import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:tract_it_app/screens/dashboard.dart';
import 'package:tract_it_app/screens/register_device.dart';
import 'package:tract_it_app/screens/reports.dart';
import 'package:tract_it_app/screens/settings.dart';
import 'package:tract_it_app/screens/verify.dart';
import 'package:tract_it_app/utils/colors.dart';

const List<TabItem> items = [
  TabItem(
    icon: FluentIcons.home_48_regular,
    title: 'Home',
  ),
  TabItem(
    icon: FluentIcons.box_24_regular,
    title: 'Register',
  ),
  TabItem(
    icon: FluentIcons.barcode_scanner_24_filled,
    title: 'Verify',
  ),
  TabItem(
    icon: FluentIcons.form_48_regular,
    title: 'Reports',
  ),
  TabItem(
    icon: FluentIcons.settings_24_regular,
    title: 'Settings',
  ),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int visit = 0;

  final List<Widget> _screens = [
    Dashboard(),
    RegisterDevice(),
    Verify(),
    Reports(),
    Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body:_screens[visit],
      bottomNavigationBar: Container(
        child: BottomBarInspiredFancy(
          items: items,
          backgroundColor: Colors.white,
          color: faintTextColor,
          colorSelected: primary,
          indexSelected: visit,
          styleIconFooter: StyleIconFooter.dot,
          onTap: (int index) => setState(() {
            visit = index;
          }),
        ),
      ),
    );
  }
}
