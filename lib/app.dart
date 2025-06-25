import 'package:flutter/material.dart';
import 'package:prototico_twoo/config/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Protótipo Twoo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      initialRoute: AppRouter.mainNav,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
