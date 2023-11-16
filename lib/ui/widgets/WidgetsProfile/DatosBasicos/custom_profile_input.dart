import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/edit_icon_profile.dart';

class CustomProfileInput extends StatelessWidget {
  const CustomProfileInput({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    double screenHeight = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Icono a la izquierda
              Icon(
                icon,
                color: appTheme.color("third"),
                size: screenHeight * 0.1,
              ),
              const SizedBox(width: 10),
              // Textos a la izquierda
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texto(
                    title: title,
                    colorText: appTheme.color("third"),
                    size: screenHeight * 0.03,
                    fontWeight: FontWeight.normal,
                  ),
                  Texto(
                    title: value,
                    colorText: Colors.white,
                    size: screenHeight * 0.043,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
              const Spacer(),
              const EditIconProfile()
            ],
          ),
          const SizedBox(height: 5),
          // Línea subrayada
          Container(
            height: 1,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
