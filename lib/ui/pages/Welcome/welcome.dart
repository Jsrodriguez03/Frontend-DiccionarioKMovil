import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsWelcome/card_welcome.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsWelcome/text_welcome.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Scaffold(
      backgroundColor: appTheme.color("primary"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Logo(),
          const SizedBox(height: 5),
          TextWelcome(
            size: 25,
            title: "¿Quieres aprender la lengua kankuama?",
            colorText: appTheme.color("secondary"),
          ),
          const SizedBox(height: 15),
          TextWelcome(
            size: 15,
            title: "Explota nuestro diccionario \n kankuamo",
            colorText: appTheme.color("third"),
          ),
          const SizedBox(height: 20),
          const CardWelcome(),
          const SizedBox(height: 25),
          CustomElevatedButton(
            buttonText: "Iniciar Sesión",
            onPressed: () {
              Get.toNamed("/login-in");
            },
          ),
        ],
      ),
    );
  }
}
