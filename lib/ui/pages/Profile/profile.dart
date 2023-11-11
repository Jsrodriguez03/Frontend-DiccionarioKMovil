import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/datos_basicos.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/ImagenProfile/imagen_profile.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/Descripcion/descripcion.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Scaffold(
      backgroundColor: appTheme.color("primary"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Logo(height: 70),
            const SizedBox(height: 15),
            const ImagenPerfil(),
            Texto(
              title: "DATOS BÁSICOS",
              colorText: appTheme.color("secondary"),
              size: 20,
              fontWeight: FontWeight.w900,
            ),
            const DatosBasicos(),
            const Descripcion(),
            const SizedBox(height: 28),
            CustomElevatedButton(
              buttonText: "Cerrar Sesión",
              onPressed: () {
                Get.toNamed("/welcome");
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}
