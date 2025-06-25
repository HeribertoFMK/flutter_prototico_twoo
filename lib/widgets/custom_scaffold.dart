import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class CustomScaffold extends StatelessWidget {
  final String userName;
  final String? profileImageUrl;
  final Widget body;
  final Widget? bottomNavigationBar;

  const CustomScaffold({
    super.key,
    required this.userName,
    this.profileImageUrl,
    required this.body,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        userName: userName,
        profileImageUrl: profileImageUrl,
      ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
