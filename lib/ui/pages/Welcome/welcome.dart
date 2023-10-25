import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/CustomElevationButtom.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
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
          const Logo(),
          const SizedBox(height: 5),
          TextWelcome(
            appTheme: appTheme,
            size: 25,
            title: "¿Quieres aprender la lengua kankuama?",
            colorText: appTheme.color("secondary"),
          ),
          const SizedBox(height: 15),
          TextWelcome(
            appTheme: appTheme,
            size: 15,
            title: "Explota nuestro diccionario \n kankuamo",
            colorText: appTheme.color("third"),
          ),
          const SizedBox(height: 20),
          const CardWelcome(),
          const SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: () {
          //     Get.toNamed("/login-in");
          //   },
          //   child: const Text("Inisiar Sesión"),
          // ),
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
      height: 300,
      child: Container(
        width: 257,
        height: 300,
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
                child: Image.asset("assets/imagen.png", fit: BoxFit.fill),
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
