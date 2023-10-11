import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  final Color bgCard = const Color(0xFF30313A);
  final Color bgText = const Color(0xFFE6C068);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: Get.width * 0.45,
        child: Card(
          color: bgCard,
          shadowColor: Colors.black,
          elevation: 8,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                child: SizedBox(
                  height: 100,
                  width: 1000,
                  child: Image.asset("assets/imagen.png", fit: BoxFit.fill),
                ),
              ),

              // Botones y Nombre del Animal
              Texto(
                title: "Animal",
                colorText: bgText,
                size: 25,
                fontWeight: FontWeight.normal,
              ),

              const Button(titulo: "Kankuamo"),
              const Button(titulo: "Inglés"),
            ],
          ),
        ),
      ),
    );
  }
}

class Texto extends StatelessWidget {
  const Texto({
    super.key,
    required this.title,
    required this.colorText,
    required this.size,
    required this.fontWeight,
  });

  final String title;
  final Color colorText;
  final double size;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: colorText,
            fontSize: size,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key, required this.titulo});
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
