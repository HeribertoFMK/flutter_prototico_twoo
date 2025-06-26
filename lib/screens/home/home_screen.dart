import 'package:flutter/material.dart';
import 'package:prototico_twoo/widgets/custom_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      userName: 'Heriberto',
      profileImageUrl: null,
      currentIndex: 0, // Index da aba "Início"
      onTabSelected: (index) {
        Navigator.of(context).pushNamed(
          index == 0
              ? '/home'
              : index == 1
              ? '/settings'
              : '/about',
        );
      },
      body: Stack(
        children: [
          Opacity(
            opacity: 0.08,
            child: Image.asset(
              'assets/images/fundo_divertido.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          const Center(
            child: Text(
              'Bem-vindo à Home!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
