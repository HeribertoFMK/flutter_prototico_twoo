import 'package:flutter/material.dart';
import 'package:prototico_twoo/widgets/custom_scaffold.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      userName: 'Heriberto',
      profileImageUrl: '',
      currentIndex: 2,
      onTabSelected: (index) => Navigator.of(context).pushNamed(
        index == 0
            ? '/home'
            : index == 1
                ? '/settings'
                : '/about',
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Este aplicativo foi desenvolvido para demonstrar uma interface moderna e funcional.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
