import 'package:flutter/material.dart';
import 'package:prototico_twoo/widgets/custom_scaffold.dart';

class TermsOfUseScreen extends StatelessWidget {
  const TermsOfUseScreen({super.key});

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
          'Ao utilizar este aplicativo, você concorda com os seguintes termos:\n\n'
          '1. Não usar o app para fins ilegais.\n'
          '2. Não modificar ou tentar quebrar a segurança do sistema.\n'
          '3. O uso dos serviços é por sua conta e risco.\n\n'
          'Agradecemos por confiar em nossa plataforma.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
