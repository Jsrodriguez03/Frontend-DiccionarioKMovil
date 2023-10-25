import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:get/get.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({super.key, required this.titulo});
  final String titulo;

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: SizedBox(
        width: Get.width * 0.37,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: appTheme.color("primary"),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 14),
          ),
          onPressed: () {},
          child: Text(titulo),
        ),
      ),
    );
  }
}
