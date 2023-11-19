import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:get/get.dart';

class CustomIconButtom extends StatelessWidget {
  const CustomIconButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      icon: const Icon(
        Icons.add_circle_rounded,
        color: AppTheme.secondary,
      ),
      onPressed: () {
        Get.toNamed("/add-word");
      },
    );
  }
}
