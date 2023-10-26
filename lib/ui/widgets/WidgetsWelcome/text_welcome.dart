import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';

class TextWelcome extends StatelessWidget {
  const TextWelcome({
    super.key,
    required this.size,
    required this.title,
    required this.colorText,
  });
  final double size;
  final String title;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Texto(
          title: title,
          colorText: colorText,
          size: size,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
