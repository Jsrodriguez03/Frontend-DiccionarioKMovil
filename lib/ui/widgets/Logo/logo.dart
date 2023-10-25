import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 70,
        width: 200,
        child: Image.asset("assets/Logo.jpeg", fit: BoxFit.contain),
      ),
    );
  }
}
