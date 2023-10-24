import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/button_card.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:get/get.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.titleCard,
    this.showButtons = true,
    this.onTap,
  });

  final String titleCard;
  final bool showButtons;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: Get.width * 0.45,
        child: Card(
          color: appTheme.color("fourth"),
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
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Texto(
                  title: titleCard,
                  colorText: appTheme.color("secondary"),
                  size: 23,
                  fontWeight: FontWeight.w500,
                  textAlingTitle: TextAlign.left,
                ),
              ),

              // Verificar si se deben mostrar los botones
              if (showButtons)
                const Column(
                  children: [
                    ButtonCard(titulo: "Kankuamo"),
                    ButtonCard(titulo: "Inglés"),
                    SizedBox(height: 5)
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
