import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  const Separator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 500,
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
