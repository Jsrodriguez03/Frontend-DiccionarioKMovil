import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/custom_text.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/datos_basicos.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/ImagenProfile/custom_circle_avatar.dart';
import 'package:frontend_diccionario/ui/widgets/appBar/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = context.watch<LoginProvider>();

    return Scaffold(
      backgroundColor: AppTheme.primary,
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: const Text("Perfil"),
        center: false,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          children: [
            const CustomCircleAvatar(radius: 80),
            const SizedBox(height: 30),
            const CustomText(
              title: "Datos Básicos",
              colorText: AppTheme.secondary,
              size: 20,
              fontWeight: FontWeight.bold,
            ),
            const Expanded(child: DatosBasicos()),
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
