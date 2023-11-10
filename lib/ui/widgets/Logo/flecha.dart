import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Flecha extends StatelessWidget {
  const Flecha({
    super.key,
    required this.navigation,
  });

  final String navigation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 5),
      child: IconButton(
        onPressed: () {
          Get.toNamed(navigation);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );
  }
}
