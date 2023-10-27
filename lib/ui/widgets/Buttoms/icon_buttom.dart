import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:get/get.dart';

class CustomIconButtom extends StatelessWidget {
  const CustomIconButtom({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    return IconButton(
      iconSize: 30,
      icon: Icon(Icons.add_circle_rounded, color: theme.color("secondary"),),
      onPressed: () {
        Get.toNamed("/add-word");
      },
    );
  }
}