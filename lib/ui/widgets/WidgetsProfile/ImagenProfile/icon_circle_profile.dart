import 'package:flutter/material.dart';

class IconCircleProfile extends StatelessWidget {
  const IconCircleProfile({
    super.key,
    required this.iconCircle,
    this.sizeIconCircle,
    required this.directionIconCircle,
    required this.dimensionIconCircle,
    required this.colorIconCircle,
    required this.colorIcon,
    this.onPressed,
  });

  final double directionIconCircle;
  final double dimensionIconCircle;
  final Color colorIconCircle;
  final IconData iconCircle;
  final double? sizeIconCircle;
  final Color colorIcon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: directionIconCircle,
      top: directionIconCircle,
      child: Container(
        width: dimensionIconCircle,
        height: dimensionIconCircle,
        decoration: ShapeDecoration(
          color: colorIconCircle,
          shape: const CircleBorder(),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            iconCircle,
            size: sizeIconCircle,
            color: colorIcon,
          ),
        ),
      ),
    );
  }
}
