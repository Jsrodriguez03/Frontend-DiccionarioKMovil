import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const CustomElevatedButton({super.key, 
    required this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    AppTheme theme = AppTheme();
    
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.color("secondary"),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: theme.color("secondary")),
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size(screenWidth * 0.9, 57),
        
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: theme.color("primary"),
          fontSize: 18.0,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
