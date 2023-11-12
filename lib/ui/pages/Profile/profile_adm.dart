import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/Administration/administration.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/datos_basicos.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/ImagenProfile/imagen_profile.dart';
import 'package:frontend_diccionario/ui/widgets/navbar/navbar.dart';

class ProfileAdm extends StatelessWidget {
  const ProfileAdm({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: appTheme.color("primary"),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(heigth: screenWidth * 0.28),
            const SizedBox(height: 15),
            const ImagenPerfil(),
            const DatosBasicos(),
            const SizedBox(height: 15),
            Administration(appTheme: appTheme)
          ],
        ),
      ),
      bottomNavigationBar: const NavBarCategory(selectedIndex: 5),
    );
  }
}
