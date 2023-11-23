import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/ImagenProfile/icon_circle_profile.dart';
import 'package:provider/provider.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double radius;
  final double iconSize;
  final bool iconCamera;

  const CustomCircleAvatar({
    super.key,
    this.radius = 25,
    this.iconSize = 120,
    this.iconCamera = true,
  });

  @override
  Widget build(BuildContext context) {
    final loginProvider = context.watch<LoginProvider>();

    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: AppTheme.fourth,
          radius: radius,
          child: loginProvider.getLogo == null
              ? Icon(
                  Icons.person_rounded,
                  size: iconSize,
                  color: AppTheme.third,
                )
              : roundImage(loginProvider.getLogo!),
        ),
        Visibility(
          visible: iconCamera,
          child: IconCircleProfile(
            iconCircle: Icons.camera_alt,
            colorIcon: AppTheme.primary,
            colorIconCircle: AppTheme.secondary,
            dimensionIconCircle: 40,
            directionIconCircle: 115,
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget roundImage(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(url),
    );
  }
}
