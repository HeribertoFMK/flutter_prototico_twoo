import 'package:flutter/material.dart';
import 'package:prototico_twoo/widgets/custom_scaffold.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      userName: 'Heriberto',
      profileImageUrl: null,
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text('Preferências',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          SwitchListTile(
            title: const Text('Tema escuro', style: TextStyle(fontSize: 18)),
            activeColor: const Color(0xFFB621FE),
            value: isDarkMode,
            onChanged: (value) {
              setState(() => isDarkMode = value);
            },
          ),
          const SizedBox(height: 32),
          const Divider(),
          const Text('Mais configurações em breve...',
              style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
