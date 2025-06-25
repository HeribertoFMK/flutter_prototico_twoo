import 'package:flutter/material.dart';

class LoginAnimatedScreen extends StatefulWidget {
  const LoginAnimatedScreen({super.key});

  @override
  State<LoginAnimatedScreen> createState() => _LoginAnimatedScreenState();
}

class _LoginAnimatedScreenState extends State<LoginAnimatedScreen>
    with SingleTickerProviderStateMixin {
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passFocus = FocusNode();
  bool _emailFocused = false;
  bool _passFocused = false;
  double _buttonScale = 1.0;

  @override
  void initState() {
    super.initState();
    _emailFocus.addListener(
        () => setState(() => _emailFocused = _emailFocus.hasFocus));
    _passFocus
        .addListener(() => setState(() => _passFocused = _passFocus.hasFocus));
  }

  @override
  void dispose() {
    _emailFocus.dispose();
    _passFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final Color bgColor =
        isDark ? const Color(0xFF1E1E2C) : const Color(0xFFF2F2F7);
    const Color primary = Color(0xFFB621FE);

    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          // Elementos ilustrativos do fundo
          Positioned(
            top: -120,
            left: -90,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    primary.withAlpha((0.6 * 255).toInt()),
                    Colors.pinkAccent.withAlpha((0.3 * 255).toInt())
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -100,
            right: -100,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Colors.deepPurple.withAlpha((0.4 * 255).toInt()),
                    Colors.blueAccent.withAlpha((0.2 * 255).toInt())
                  ],
                ),
              ),
            ),
          ),

          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/login_art.png', height: 160),
                  const SizedBox(height: 16),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: isDark ? const Color(0xFF2A2A40) : Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        if (!isDark)
                          BoxShadow(
                            color: Colors.black.withAlpha((0.08 * 255).toInt()),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          )
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Bem-vindo!",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 24),
                        _animatedField(
                            "Email", Icons.email, _emailFocus, _emailFocused),
                        const SizedBox(height: 16),
                        _animatedField(
                            "Senha", Icons.lock, _passFocus, _passFocused,
                            obscure: true),
                        const SizedBox(height: 24),
                        GestureDetector(
                          onTapDown: (_) => setState(() => _buttonScale = 0.93),
                          onTapUp: (_) => setState(() => _buttonScale = 1.0),
                          onTapCancel: () => setState(() => _buttonScale = 1.0),
                          onTap: () {
                            // ação de login
                          },
                          child: AnimatedScale(
                            scale: _buttonScale,
                            duration: const Duration(milliseconds: 150),
                            child: Container(
                              width: double.infinity,
                              height: 48,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [primary, Colors.pinkAccent],
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                "Entrar",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Esqueceu a senha?"),
                        ),
                        const SizedBox(height: 12),
                        const Divider(),
                        const SizedBox(height: 12),
                        const Text("Ou continue com"),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _socialButton(
                                icon: Icons.g_mobiledata, color: Colors.red),
                            const SizedBox(width: 16),
                            _socialButton(
                                icon: Icons.facebook, color: Colors.blue),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _animatedField(
    String hint,
    IconData icon,
    FocusNode focusNode,
    bool isFocused, {
    bool obscure = false,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      transform: Matrix4.translationValues(0, isFocused ? -4 : 0, 0),
      curve: Curves.easeOut,
      child: TextField(
        focusNode: focusNode,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(icon),
          filled: true,
          fillColor: const Color(0xFFF5F6FA),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: Colors.pinkAccent.shade100, width: 2),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _socialButton({required IconData icon, required Color color}) {
    return InkWell(
      borderRadius: BorderRadius.circular(32),
      onTap: () {
        // ação social
      },
      child: CircleAvatar(
        radius: 24,
        backgroundColor: color.withAlpha((0.1 * 255).toInt()),
        child: Icon(icon, color: color),
      ),
    );
  }
}
