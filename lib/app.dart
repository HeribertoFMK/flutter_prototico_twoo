import 'package:flutter/material.dart';
import 'package:prototico_twoo/config/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prototico Twoo',
      theme: ThemeData(
        useMaterial3: false, // ou true se quiser usar o novo material
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRouter.home, // ou AppRouter.login
    );
  }
}
