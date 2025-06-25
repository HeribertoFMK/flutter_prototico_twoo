import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final FocusNode _nameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passFocus = FocusNode();

  bool _nameFocused = false;
  bool _emailFocused = false;
  bool _passFocused = false;
  double _buttonScale = 1.0;

  @override
  void initState() {
    super.initState();
    _nameFocus
        .addListener(() => setState(() => _nameFocused = _nameFocus.hasFocus));
    _emailFocus.addListener(
        () => setState(() => _emailFocused = _emailFocus.hasFocus));
    _passFocus
        .addListener(() => setState(() => _passFocused = _passFocus.hasFocus));
  }

  @override
  void dispose() {
    _nameFocus.dispose();
    _emailFocus.dispose();
    _passFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    const Color primary = Color(0xFFB621FE);
    final Color bgColor =
        isDark ? const Color(0xFF1E1E2C) : const Color(0xFFF2F2F7);

    return Scaffold(
      backgroundColor: bgColor,
      body: Stack(
        children: [
          Positioned(
            top: -100,
            left: -90,
            child: Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(182, 33, 254, 0.5),
                    Color.fromRGBO(255, 64, 129, 0.3),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -120,
            right: -100,
            child: Container(
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(103, 58, 183, 0.4),
                    Color.fromRGBO(33, 150, 243, 0.2),
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
                  Image.asset('assets/images/login_art.png', height: 140),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: isDark ? const Color(0xFF2A2A40) : Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        if (!isDark)
                          BoxShadow(
                            color: Colors.black.withAlpha((0.08 * 255).round()),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Crie sua conta",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 24),
                        _animatedField(
                            "Nome", Icons.person, _nameFocus, _nameFocused),
                        const SizedBox(height: 16),
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
                            // lógica de registro
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
                                "Cadastrar",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
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
        // social login futuro
      },
      child: CircleAvatar(
        radius: 24,
        backgroundColor: Color.fromRGBO(
          (color.r * 255.0).round() & 0xff,
          (color.g * 255.0).round() & 0xff,
          (color.b * 255.0).round() & 0xff,
          0.1,
        ),
        child: Icon(icon, color: color),
      ),
    );
  }
}
