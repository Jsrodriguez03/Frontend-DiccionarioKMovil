import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  const Separator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            style: BorderStyle.solid,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
