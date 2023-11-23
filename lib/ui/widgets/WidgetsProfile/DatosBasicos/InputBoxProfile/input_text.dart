import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/custom_text.dart';

class InputText extends StatelessWidget {
  const InputText({
    super.key,
    required this.text,
    required this.top,
    required this.color,
    required this.size,
  });

  final String text;
  final double top;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 40,
      child: CustomText(
        title: text,
        colorText: color,
        size: size,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
