import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;
  final double borderRadius, width, heigth;
  final Color colorButtom, colorText;

  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    this.onPressed,
    this.borderRadius = 10,
    this.width = 0.9,
    this.heigth = 57,
    this.colorButtom = const Color(0xFFE6C068),
    this.colorText = const Color(0xFF1F2029),
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: colorButtom,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: colorButtom),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        minimumSize: Size(screenWidth * width, screenHeight * 0.06),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: colorText,
          fontSize: screenHeight * 0.025,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
