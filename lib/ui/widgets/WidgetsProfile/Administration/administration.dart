import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:get/get.dart';

class Administration extends StatelessWidget {
  const Administration({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "ADMINISTRACIÓN",
          style: TextStyle(
            fontSize: screenHeight * 0.025,
            color: appTheme.color("secondary"),
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 10),
        CustomElevatedButton(
          colorButtom: appTheme.color("fourth"),
          colorText: Colors.white,
          borderRadius: 20,
          // size: 17,
          buttonText: "Gestionar Usuarios",
          onPressed: () {
            Get.toNamed("/manage-user");
          },
        ),
        const SizedBox(height: 10),
        CustomElevatedButton(
          borderRadius: 20,
          // size: 17,
          buttonText: "Gestionar Palabras",
          onPressed: () {
            Get.toNamed("/manage-word");
          },
        ),
        const SizedBox(height: 10),

        // Texto "Cerrar Sesión" subrayado
        Center(
          child: RichText(
            text: TextSpan(
              text: 'Cerrar Sesión',
              style: TextStyle(
                fontSize: screenHeight * 0.02,
                color: Colors.white,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.toNamed("/welcome");
                },
            ),
          ),
        ),
      ],
    );
  }
}
