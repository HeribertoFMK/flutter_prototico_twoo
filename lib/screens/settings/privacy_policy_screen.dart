import 'package:flutter/material.dart';
import 'package:prototico_twoo/widgets/custom_scaffold.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      userName: 'Heriberto',
      profileImageUrl: null,
      body: Padding(
        padding: EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Text(
            'Esta é a Política de Privacidade do aplicativo. '
            'Aqui explicamos como os dados dos usuários são coletados, usados e protegidos.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
