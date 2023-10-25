import 'package:flutter/material.dart';

class FondoDegradado extends StatelessWidget {
  const FondoDegradado({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              const Color(0xFF1F2029).withOpacity(1),
              const Color(0xFF1F2029).withOpacity(1),
              const Color(0xFF1F2029).withOpacity(1),
              const Color(0xFF1F2029).withOpacity(1),
              Colors.grey.shade50.withOpacity(0.0),
              Colors.grey.shade50.withOpacity(0.0),
              Colors.grey.shade50.withOpacity(0.0),
              Colors.grey.shade50.withOpacity(0.0),
            ],
          ),
        ),
      ),
    );
  }
}
