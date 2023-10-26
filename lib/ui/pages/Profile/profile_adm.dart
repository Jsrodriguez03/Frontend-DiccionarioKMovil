import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/CustomElevationButtom.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/datos_basicos.dart';
import 'package:frontend_diccionario/ui/widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/ImagenProfile/imagen_profile.dart';

class ProfileAdm extends StatelessWidget {
  const ProfileAdm({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Scaffold(
      backgroundColor: appTheme.color("primary"),
      body: Column(
        children: [
          const Logo(),
          const SizedBox(height: 15),
          const ImagenPerfil(),
          Texto(
            title: "DATOS BÁSICOS",
            colorText: appTheme.color("secondary"),
            size: 20,
            fontWeight: FontWeight.w900,
          ),
          const DatosBasicos(),

          //BOTONES DE ADMINISTRACIÓN
          Text(
            "ADMINISTRACIÓN",
            style: TextStyle(
              fontSize: 20,
              color: appTheme.color("secondary"),
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
            buttonText: "Gestionar Usuarios",
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
            buttonText: "Gestionar Palabras",
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}
