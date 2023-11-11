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
      body: Container(
        color: theme.color("primary"),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(heigth: screenWidth * 0.35),
            //Registrarse
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: 420,
              constraints: const BoxConstraints(maxHeight: 600),
              child: Expanded(
                child: Column(
                  children: [
                    Texto(
                      title: 'Registrarse',
                      colorText: theme.color("secondary"),
                      size: 35,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(height: 10),
                    const Texto(
                      title: 'Por favor llene todos\nlos campos requeridos',
                      colorText: Colors.white,
                      size: 15,
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
                          const SizedBox(height: 15),
                        ],
                      ),
                    const SizedBox(height: 10),
                    CustomElevatedButton(
                      buttonText: "Continuar",
                      onPressed: () {
                        // Utiliza los controllers para acceder a la información.
                        for (var controller in controllers.entries) {
                          print('${controller.key}: ${controller.value.text}');
                        }
                        Get.toNamed("/homeCategory");
                      },
                    ),
                    //Mensaje de Iniciar Sesión
                    const SizedBox(height: 10),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: '¿Ya estás registrado? ',
                          style: const TextStyle(
                              color: Color(0xFF908E8E), fontSize: 15.5),
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
            ),
          ],
        ),
      ),
    );
  }
}
