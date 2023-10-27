import 'package:flutter/material.dart';

class CustomIconButtom extends StatelessWidget {
  const CustomIconButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      icon: const Icon(Icons.more_vert_rounded),
      onPressed: () {
        // ...
      },
    );
  }
}