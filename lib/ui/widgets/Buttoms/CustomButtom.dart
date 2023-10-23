import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.titulo});
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: Get.width * 0.4,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1F2029),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 15.5),
          ),
          onPressed: () {},
          child: Text(titulo),
        ),
      ),
    );
  }
}
