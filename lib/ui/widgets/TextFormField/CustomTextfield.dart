import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final int lineas;

  const CustomTextFormField(
      {super.key, required this.labelText, this.lineas = 1});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();

    return TextFormField(
      maxLines: lineas,
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: theme.color("third")),
        filled: true,
        fillColor: theme.color("fourth"),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: theme.color("fourth")),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.color("fourth")),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.color("fourth")),
        ),
      ),
      style: const TextStyle(
        fontSize: 18.0,
        color: Colors.white,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
