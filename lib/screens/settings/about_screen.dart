import 'package:flutter/material.dart';
import 'package:prototico_twoo/widgets/custom_scaffold.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      userName: 'Heriberto',
      profileImageUrl: null,
      body: Padding(
        padding: EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sobre o App',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              Text(
                'Este aplicativo foi desenvolvido para oferecer uma experiência moderna, '
                'intuitiva e agradável aos usuários. Com suporte a temas escuros, animações suaves '
                'e funcionalidades práticas, ele é ideal para quem busca produtividade e design atrativo.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Versão: 1.0.0',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Desenvolvido por: Heriberto da Fonseca Monteiro',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32),
              Text(
                'Este é apenas um exemplo. Em breve, mais informações como licenças, '
                'parceiros, e tecnologias utilizadas serão incluídas aqui.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
