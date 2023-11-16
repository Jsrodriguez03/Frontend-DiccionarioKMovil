import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/custom_profile_input.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';

class DatosBasicos extends StatelessWidget {
  const DatosBasicos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    double screenHeight = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Texto(
            title: "DATOS BÁSICOS",
            colorText: appTheme.color("secondary"),
            size: screenHeight * 0.05,
            fontWeight: FontWeight.w900,
          ),
          const CustomProfileInput(
            title: "Nombre",
            value: "Santiago Rodriguez ",
            icon: Icons.person_rounded,
          ),
          const CustomProfileInput(
            title: "Email",
            value: "santiago@gmail.com",
            icon: Icons.alternate_email,
          ),
        ],
      ),
    );
  }
}
