import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final int lineas;
  final TextEditingController controller;
  final bool obscureText; // Nuevo parámetro para indicar si el texto debe ocultarse

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.lineas = 1,
    required this.controller,
    this.obscureText = false, // Valor predeterminado es false (no oculto)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: lineas,
      obscureText: obscureText, // Aplicar la configuración de ocultar texto
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: AppTheme.third),
        filled: true,
        fillColor: AppTheme.fourth,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: AppTheme.fourth),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppTheme.fourth),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppTheme.fourth),
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
