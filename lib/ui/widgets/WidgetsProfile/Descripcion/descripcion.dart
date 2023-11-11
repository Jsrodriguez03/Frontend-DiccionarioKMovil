import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/edit_icon_profile.dart';
import 'package:get/get.dart';

class Descripcion extends StatelessWidget {
  const Descripcion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return SizedBox(
      width: Get.width * 0.80,
      height: 116,
      child: Stack(
        children: [
          //Titulo
          Texto(
            title: 'DESCRIPCIÓN',
            colorText: appTheme.color("secondary"),
            size: 20,
            fontWeight: FontWeight.w900,
          ),

          //Descripción
          Positioned(
            left: 0,
            top: 0,
            child: SizedBox(
              width: Get.width * 0.88,
              height: 117,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 32,
                    child: SizedBox(
                        width: Get.width * 0.80,
                        child: const Texto(
                          title:
                              'Estudiante de la Universidad Popular del Cesar (UPC) Interesado en aprender la lengua kankuama para apoyar los procesos de fortalecimiento cultural.',
                          colorText: Colors.white,
                          size: 15,
                          fontWeight: FontWeight.w400,
                          textAlingTitle: TextAlign.justify,
                        )),
                  ),

                  //Icono de Editar
                  const EditIconProfile(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
