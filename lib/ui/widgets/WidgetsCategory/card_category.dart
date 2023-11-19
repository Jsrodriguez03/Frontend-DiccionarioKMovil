import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/button_card.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:get/get.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({
    super.key,
    this.spanish = "Spanish",
    this.kankuamo = "Kankuamo",
    this.english = "English",
    this.dataWord,
  });

  final String spanish;
  final String kankuamo;
  final String english;
  final Map<String, dynamic>? dataWord;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: Get.width * 0.45,
        child: Card(
          color: AppTheme.fourth,
          shadowColor: Colors.black,
          elevation: 8,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                child: Container(
                  color: dataWord?["image"] != null
                      ? Colors.white
                      : AppTheme.primary,
                  child: SizedBox(
                    height: 200,
                    width: 1000,
                    child: dataWord?["image"] != null
                        ? Image.network(dataWord?["image"], fit: BoxFit.contain)
                        : Image.asset("assets/imagen.png", fit: BoxFit.fill),
                  ),
                ),
              ),

              // Botones y Nombre del Animal
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    Texto(
                      title: spanish,
                      colorText: AppTheme.secondary,
                      size: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),

              Column(
                children: [
                  ButtonCard(
                      titulo: kankuamo, sound: dataWord?["kankuamo_sound"]),
                  ButtonCard(
                      titulo: english, sound: dataWord?["english_sound"]),
                  const SizedBox(height: 5)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
