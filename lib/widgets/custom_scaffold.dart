import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class CustomScaffold extends StatelessWidget {
  final String userName;
  final String? profileImageUrl;
  final Widget body;
  final int currentIndex;
  final Function(int)? onTabSelected;

  const CustomScaffold({
    super.key,
    required this.userName,
    this.profileImageUrl,
    required this.body,
    this.currentIndex = 0,
    this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        userName: userName,
        profileImageUrl: profileImageUrl,
      ),
      body: Stack(
        children: [
          // Fundo com imagem fosca
          Opacity(
            opacity: 0.08,
            child: Image.asset(
              'assets/images/fundo_divertido.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          // Conteúdo principal por cima
          body,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: const Color(0xFF4B0082), // Indigo escuro
        selectedItemColor: const Color(0xFFCDA4DE), // Lavanda clara
        unselectedItemColor: Colors.white70,
        onTap: onTabSelected,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Config',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded),
            label: 'Sobre',
          ),
        ],
      ),
    );
  }
}
