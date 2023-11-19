import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final int lineas;
  final TextEditingController controller;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.lineas = 1,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: lineas,
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
