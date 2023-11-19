import 'package:flutter/material.dart';

//Paleta de Colores
const Color _bgCard = Color(0xFF30313A);
const Color _bgText = Color(0xFFE6C068);

const List<Color> _colorThemes = [
  _bgCard,
  _bgText,
  Colors.black,
  Colors.red,
  Colors.blue,
  Colors.green
];

class AppTheme {
  final int selectedColor;
  static const primary = Color(0xFF1F2029);
  static const secondary = Color(0xFFE6C068);
  static const third = Color(0xFF908E8E);
  static const fourth = Color(0xFF30313A);

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length - 1,
            'No seleccionaste un color en el rango valido!');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
