import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    this.heigth = 70,
  });

  final double? heigth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heigth,
      child: Image.asset("assets/Logo.jpeg", fit: BoxFit.contain),
    );
  }
}
