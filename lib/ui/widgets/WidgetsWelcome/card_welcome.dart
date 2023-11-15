import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';

class CardWelcome extends StatelessWidget {
  const CardWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    return SizedBox(
      width: screenWidth * 0.8,
      height: screenHeigth * 0.425,
      child: Container(
        width: screenWidth * 0.8,
        height: screenHeigth * 0.425,
        decoration: BoxDecoration(
          color: const Color(0xFF2B2E38),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          children: [
            //Texto
            Positioned(
              left: screenWidth * 0.075,
              top: screenHeigth * 0.28,
              child: SizedBox(
                width: screenWidth * 0.66,
                child: Texto(
                  title: 'Tenemos todas las \npalabras que deseas\n aprender',
                  colorText: Colors.white,
                  size: screenHeigth * 0.028,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(40),
              ),
              child: SizedBox(
                height: screenHeigth * 0.26,
                width: screenWidth,
                child: Image.asset("assets/AllCategorys.png", fit: BoxFit.fill),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
