import 'package:flutter/material.dart';
import 'package:prototico_twoo/widgets/custom_scaffold.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      userName: 'Heriberto',
      profileImageUrl: '',
      currentIndex: 0,
      onTabSelected: (index) => Navigator.of(context).pushNamed(
        index == 0
            ? '/home'
            : index == 1
                ? '/settings'
                : '/about',
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Nossa política de privacidade garante o uso seguro de seus dados.\n\n'
          'Não coletamos informações sensíveis sem seu consentimento. Todos os dados armazenados são protegidos por criptografia e seguem os padrões internacionais de segurança.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
