import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;
  final double borderRadius, width, heigth;

  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    this.onPressed,
    this.borderRadius = 10,
    this.width = 0.9,
    this.heigth = 57,
  });

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    double screenWidth = MediaQuery.of(context).size.width;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.color("secondary"),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: theme.color("secondary")),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        minimumSize: Size(screenWidth * width, heigth),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: theme.color("primary"),
          fontSize: 20,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
