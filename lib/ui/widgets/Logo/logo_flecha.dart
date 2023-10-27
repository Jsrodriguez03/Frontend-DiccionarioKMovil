import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';

class LogoFlecha extends StatelessWidget {
  const LogoFlecha({
    super.key,
    required this.navigation,
  });

  final String navigation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () {
              Get.toNamed(navigation);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        const Center(child: Logo()),
      ],
    );
  }
}
