import 'package:flutter/material.dart';
import 'package:prototico_twoo/widgets/custom_scaffold.dart';

class TermsOfUseScreen extends StatelessWidget {
  const TermsOfUseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      userName: 'Heriberto',
      profileImageUrl: null,
      body: Padding(
        padding: EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Text(
            'Estes são os Termos de Uso do aplicativo. '
            'Ao utilizar o app, o usuário concorda com todas as regras aqui descritas.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
