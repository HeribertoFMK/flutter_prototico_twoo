import 'package:flutter/material.dart';
import 'package:prototico_twoo/widgets/custom_scaffold.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      userName: 'Heriberto',
      profileImageUrl: '',
      currentIndex: 1,
      onTabSelected: (index) => Navigator.of(context).pushNamed(
        index == 0
            ? '/home'
            : index == 1
                ? '/settings'
                : '/about',
      ),
      body: const Center(
        child: Text(
          'Ajustes e configurações do aplicativo.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
