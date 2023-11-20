import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:provider/provider.dart';

class ImagenPerfil extends StatelessWidget {
  final double radius;
  const ImagenPerfil({
    super.key,
    this.radius = 20,
  });

  @override
  Widget build(BuildContext context) {
    final loginProvider = context.watch<LoginProvider>();

    return CircleAvatar(
      backgroundColor: AppTheme.fourth,
      radius: radius,
      child: loginProvider.getLogo == null
          ? const Icon(
              Icons.person_rounded,
              color: AppTheme.third,
            )
          : roundImage(loginProvider.getLogo!),
    );
  }

  Widget roundImage(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(url),
    );
  }
}
