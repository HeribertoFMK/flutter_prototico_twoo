import 'package:flutter/material.dart';
import 'package:prototico_twoo/widgets/custom_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      userName: 'Heriberto',
      profileImageUrl:
          '', // Se quiser ocultar, deixe vazio. Ou passe uma URL real.
      body: Center(
        child: Text(
          'Bem-vindo à Home!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
