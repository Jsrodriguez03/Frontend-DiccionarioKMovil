import 'package:flutter/material.dart';

//Paleta de Colores
class AppTheme {
  static const primary = Color(0xFF1F2029);
  static const secondary = Color(0xFFE6C068);
  static const third = Color(0xFF908E8E);
  static const fourth = Color(0xFF30313A);

  static ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      splashFactory: NoSplash.splashFactory,
    );
  }
}
