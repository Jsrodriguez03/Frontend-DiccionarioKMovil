import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class IconInput extends StatelessWidget {
  const IconInput({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Positioned(
      left: 0,
      top: 5,
      child: Icon(
        icon,
        color: appTheme.color("third"),
        size: 45,
      ),
    );
  }
}
