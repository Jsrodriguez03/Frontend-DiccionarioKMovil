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
  });

  final double directionIconCircle;
  final double dimensionIconCircle;
  final Color colorIconCircle;
  final IconData iconCircle;
  final double? sizeIconCircle;
  final Color colorIcon;

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
        child: Center(
          child: Icon(
            iconCircle,
            size: sizeIconCircle,
            color: colorIcon,
          ),
        ),
      ),
    );
  }
}
