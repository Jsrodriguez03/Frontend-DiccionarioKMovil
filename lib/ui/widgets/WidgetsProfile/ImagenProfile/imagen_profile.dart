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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.45,
      height: screenHeight * 0.5,
      child: Stack(
        children: [
          IconCircleProfile(
            directionIconCircle: screenWidth * 0.001,
            dimensionIconCircle: screenHeight * 0.45,
            colorIconCircle: appTheme.color("fourth"),
            colorIcon: appTheme.color("third"),
            iconCircle: Icons.person_rounded,
            sizeIconCircle: screenHeight * 0.35,
          ),
          IconCircleProfile(
            directionIconCircle: screenWidth * 0.31,
            dimensionIconCircle: screenHeight * 0.13,
            colorIconCircle: appTheme.color("secondary"),
            colorIcon: Colors.black,
            iconCircle: Icons.camera_alt,
            sizeIconCircle: screenHeight * 0.08,
            onPressed: () {
              Get.toNamed("/profile-adm");
            },
          )
        ],
      ),
    );
  }
}
