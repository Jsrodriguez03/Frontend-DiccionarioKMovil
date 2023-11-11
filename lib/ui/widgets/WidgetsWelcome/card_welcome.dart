import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';

class CardWelcome extends StatelessWidget {
  const CardWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 257,
      height: 300,
      child: Container(
        width: 257,
        height: 300,
        decoration: BoxDecoration(
          color: const Color(0xFF2B2E38),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          children: [
            //Texto
            const Positioned(
              left: 28,
              top: 195,
              child: SizedBox(
                width: 198,
                child: Texto(
                  title: 'Tenemos todas las palabras que deseas aprender',
                  colorText: Colors.white,
                  size: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(40),
              ),
              child: SizedBox(
                height: 180,
                width: 1000,
                child: Image.asset("assets/AllCategorys.png", fit: BoxFit.fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
