import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/ImagenProfile/icon_circle_profile.dart';
import 'package:get/get.dart';

class ImagenPerfil extends StatelessWidget {
  const ImagenPerfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return SizedBox(
      width: 129,
      height: 139,
      child: Stack(
        children: [
          IconCircleProfile(
            directionIconCircle: 0,
            dimensionIconCircle: 119,
            colorIconCircle: appTheme.color("fourth"),
            colorIcon: appTheme.color("third"),
            iconCircle: Icons.person_rounded,
            sizeIconCircle: 110,
          ),
          IconCircleProfile(
            directionIconCircle: 84,
            dimensionIconCircle: 36,
            colorIconCircle: appTheme.color("secondary"),
            colorIcon: Colors.black,
            iconCircle: Icons.camera_alt,
            sizeIconCircle: 22,
            onPressed: () {
              Get.toNamed("/profile-adm");
            },
          )
        ],
      ),
    );
  }
}
