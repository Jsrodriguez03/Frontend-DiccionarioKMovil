import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;

  const CustomTextFormField({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {

    AppTheme theme = AppTheme();
    
    return TextFormField(
      maxLines: 1,
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(
        labelText: labelText, // Utiliza el labelText proporcionado como parámetro
        labelStyle: TextStyle(color: theme.color("third")),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: theme.color("primary")),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.color("primary")),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: theme.color("primary")),
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