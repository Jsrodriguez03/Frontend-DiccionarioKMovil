import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/CustomElevationButtom.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Scaffold(
      backgroundColor: appTheme.color("primary"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //LOGO
          SizedBox(
            height: 70,
            width: 1200,
            child: Image.asset("assets/Logo.jpeg", fit: BoxFit.contain),
          ),

          TextWelcome(
            appTheme: appTheme,
            size: 25,
            title: "¿Quieres aprender la lengua kankuama?",
            colorText: appTheme.color("secondary"),
          ),

          TextWelcome(
            appTheme: appTheme,
            size: 15,
            title: "Explota nuestro diccionario kankuamo",
            colorText: appTheme.color("third"),
          ),

          const CardWelcome(),

          const SizedBox(height: 20),
          CustomElevatedButton(
            buttonText: "Iniciar Sesión",
            onPressed: () {
              Get.toNamed("/login-in");
            },
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
            buttonText: "Registrarse",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class CardWelcome extends StatelessWidget {
  const CardWelcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 257,
      height: 326,
      child: Container(
        width: 257,
        height: 326,
        decoration: BoxDecoration(
          color: const Color(0xFF2B2E38),
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 25,
              offset: Offset(0, 10),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Stack(
          children: [
            const Positioned(
              left: 28,
              top: 205,
              child: SizedBox(
                width: 198,
                child: Text(
                  'Tenemos todas las palabras que deseas aprender',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 28,
              top: 41,
              child: SizedBox(
                width: 201,
                height: 149.10,
                child: Stack(
                  children: [
                    Positioned(
                      left: 134.20,
                      top: 0,
                      child: Container(
                        width: 38.86,
                        height: 35.08,
                        decoration: const BoxDecoration(
                          color: Color(0xFF908E8E),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 35.08,
                      child: SizedBox(
                        width: 201,
                        height: 114.01,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 160.65,
                                height: 114.01,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF908E8E),
                                  shape: StarBorder.polygon(
                                    sides: 3,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 67.49,
                              top: 10.96,
                              child: Container(
                                width: 133.51,
                                height: 99.76,
                                decoration: const ShapeDecoration(
                                  color: Color(0xFF908E8E),
                                  shape: StarBorder.polygon(
                                    sides: 3,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextWelcome extends StatelessWidget {
  const TextWelcome({
    super.key,
    required this.appTheme,
    required this.size,
    required this.title,
    required this.colorText,
  });

  final AppTheme appTheme;
  final double size;
  final String title;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Texto(
          title: title,
          colorText: colorText,
          size: size,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
