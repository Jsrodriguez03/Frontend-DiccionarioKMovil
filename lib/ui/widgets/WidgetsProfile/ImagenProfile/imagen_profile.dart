import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/ImagenProfile/icon_circle_profile.dart';
import 'package:provider/provider.dart';

class ImagenPerfil extends StatelessWidget {
  const ImagenPerfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.width;
    final loginProvider = context.watch<LoginProvider>();

    return SizedBox(
      width: screenWidth * 0.45,
      height: screenHeight * 0.5,
      child: Stack(
        children: [
          SizedBox(
            width: screenWidth,
            height: screenHeight * 0.45,
            child: CircleAvatar(
              backgroundColor: AppTheme.fourth,
              child: loginProvider.getLogo == null
                  ? Icon(
                      Icons.person_rounded,
                      color: AppTheme.third,
                      size: screenHeight * 0.35,
                    )
                  : Image.network(loginProvider.getLogo!),
            ),
          ),
          IconCircleProfile(
            directionIconCircle: screenWidth * 0.31,
            dimensionIconCircle: screenHeight * 0.13,
            colorIconCircle: AppTheme.secondary,
            colorIcon: Colors.black,
            iconCircle: Icons.camera_alt,
            sizeIconCircle: screenHeight * 0.08,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
