import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  const Texto({
    super.key,
    required this.title,
    required this.colorText,
    required this.size,
    required this.fontWeight,
  });

  final String title;
  final Color colorText;
  final double size;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: colorText,
            fontSize: size,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
