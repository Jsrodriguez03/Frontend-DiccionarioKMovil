import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    this.heigth = 70,
  });

  final double? heigth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: heigth,
        width: heigth! * 2,
        child: Image.asset("assets/Logo.jpeg", fit: BoxFit.contain),
      ),
    );
  }
}
