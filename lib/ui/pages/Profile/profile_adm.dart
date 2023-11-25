import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/Administration/administration.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/datos_basicos.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/ImagenProfile/custom_circle_avatar.dart';
import 'package:frontend_diccionario/ui/widgets/appBar/custom_appbar.dart';

class ProfileAdm extends StatelessWidget {
  const ProfileAdm({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        title: const Logo(),
        optionsLeading: false,
      ),
      backgroundColor: AppTheme.primary,
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          children: [
            const CustomCircleAvatar(radius: 80),
            const SizedBox(height: 50),
            const Expanded(child: DatosBasicos()),
            Administration(appTheme: appTheme)
          ],
        ),
      ),
    );
  }
}
