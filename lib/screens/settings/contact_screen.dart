import 'package:flutter/material.dart';
import 'package:prototico_twoo/widgets/custom_scaffold.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

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
          'Entre em contato conosco pelo formulário abaixo (em breve).',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
