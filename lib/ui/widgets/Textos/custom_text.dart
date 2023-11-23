import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
    required this.colorText,
    required this.size,
    required this.fontWeight,
    this.textAlingTitle = TextAlign.center,
  });

  final String title;
  final Color colorText;
  final double size;
  final FontWeight fontWeight;
  final TextAlign? textAlingTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: colorText,
        fontSize: size,
        fontWeight: fontWeight,
      ),
      textAlign: textAlingTitle,
    );
  }
}
