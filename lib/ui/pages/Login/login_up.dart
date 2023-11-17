import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/CustomTextfield.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:get/get.dart';

class LoginUp extends StatelessWidget {
  const LoginUp({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final lista = [
      "Nombre Completo",
      "Correo Electronico",
      "Contraseña",
      "Repetir Contraseña"
    ];

    // Mapa que contendrá los controladores, inicializados con controladores por defecto.
    final controllers = {
      "Nombre Completo": TextEditingController(),
      "Correo": TextEditingController(),
      "Contraseña": TextEditingController(),
      "Repetir Contraseña": TextEditingController(),
    };

    return Scaffold(
      backgroundColor: theme.color("primary"),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.1),
                Logo(heigth: screenWidth * 0.27),
                //Registrarse
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  width: screenWidth,
                  constraints: BoxConstraints(maxHeight: screenHeight * 0.75),
                  child: Column(
                    children: [
                      Texto(
                        title: 'Registrarse',
                        colorText: theme.color("secondary"),
                        size: screenHeight * 0.055,
                        fontWeight: FontWeight.w700,
                      ),
                      const SizedBox(height: 10),
                      Texto(
                        title: 'Por favor llene todos\nlos campos requeridos',
                        colorText: Colors.white,
                        size: screenHeight * 0.02,
                        fontWeight: FontWeight.w700,
                      ),
                      const SizedBox(height: 20),
                      for (var item in lista)
                        Column(
                          children: [
                            CustomTextFormField(
                              labelText: item,
                              controller:
                                  controllers[item] ?? TextEditingController(),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      const SizedBox(height: 10),
                      CustomElevatedButton(
                        buttonText: "Continuar",
                        onPressed: () {
                          // Utiliza los controllers para acceder a la información.
                          for (var controller in controllers.entries) {
                            print(
                                '${controller.key}: ${controller.value.text}');
                          }
                          Get.toNamed("/homeCategory");
                        },
                      ),
                      //Mensaje de Iniciar Sesión
                      const SizedBox(height: 7),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: '¿Ya estás registrado? ',
                            style: TextStyle(
                              color: const Color(0xFF908E8E),
                              fontSize: screenHeight * 0.017,
                            ),
                            children: [
                              TextSpan(
                                text: 'Iniciar Sesión',
                                style: const TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.toNamed("/login-in");
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
