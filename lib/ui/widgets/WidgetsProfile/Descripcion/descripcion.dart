import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/edit_icon_profile.dart';

class Descripcion extends StatelessWidget {
  const Descripcion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Texto(
                title: "DESCRIPCIÓN",
                colorText: appTheme.color("secondary"),
                size: 25,
                fontWeight: FontWeight.w900,
              ),
              const Spacer(),
              const EditIconProfile()
            ],
          ),
          const SizedBox(height: 5),
          const Texto(
            title:
                'Estudiante de la Universidad Popular del Cesar (UPC) Interesado en aprender la lengua kankuama para apoyar los procesos de fortalecimiento cultural.',
            colorText: Colors.white,
            size: 18,
            fontWeight: FontWeight.normal,
            textAlingTitle: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
