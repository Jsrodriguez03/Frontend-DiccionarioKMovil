import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/datos_basicos.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/ImagenProfile/imagen_profile.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final loginProvider = context.watch<LoginProvider>();

    return Scaffold(
      backgroundColor: AppTheme.primary,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(heigth: screenWidth * 0.25),
            const SizedBox(height: 15),
            const ImagenPerfil(radius: 80),
            const DatosBasicos(),
            const SizedBox(height: 20),
            CustomElevatedButton(
              buttonText: "Cerrar Sesión",
              onPressed: () {
                loginProvider.closeSession();
                Get.toNamed("/welcome");
              },
            )
          ],
        ),
      ),
    );
  }
}
