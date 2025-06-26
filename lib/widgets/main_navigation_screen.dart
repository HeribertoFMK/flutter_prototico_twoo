// main_navigation_screen.dart
import 'package:flutter/material.dart';
import 'package:prototico_twoo/screens/home/home_screen.dart';
import 'package:prototico_twoo/screens/settings/settings_screen.dart';
import 'package:prototico_twoo/screens/settings/about_screen.dart';
import 'package:prototico_twoo/widgets/custom_scaffold.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    SettingsScreen(),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      userName: 'Heriberto',
      profileImageUrl: null, // ou URL real aqui
      currentIndex: _selectedIndex,
      onTabSelected: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      body: _screens[_selectedIndex],
    );
  }
}
