import 'package:flutter/material.dart';
import 'package:frontend_diccionario/domain/entities/word.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/button_card.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:get/get.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({
    super.key,
    required this.word,
  });

  final Word word;

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
                  color: word.dataWord.image != null
                      ? Colors.white
                      : AppTheme.primary,
                  child: SizedBox(
                    height: 200,
                    width: 1000,
                    child: word.dataWord.image != null
                        ? Image.network(
                            word.dataWord.image!,
                            fit: BoxFit.contain,
                          )
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
                      title: word.spanish,
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
                      titulo: word.kankuamo,
                      sound: word.dataWord.kankuamoSound),
                  ButtonCard(
                    titulo: word.english,
                    sound: word.dataWord.englishSound,
                  ),
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
