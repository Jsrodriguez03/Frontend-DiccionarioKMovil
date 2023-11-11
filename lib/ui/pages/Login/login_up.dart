import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/CustomTextfield.dart';
import 'package:get/get.dart';

class LoginUp extends StatelessWidget {
  const LoginUp({Key? key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    double screenWidth = MediaQuery.of(context).size.width;
    final lista = [
      "Nombre Completo",
      "Teléfono",
      "Correo",
      "Contraseña",
      "Repetir Contraseña"
    ];

    // Mapa que contendrá los controladores, inicializados con controladores por defecto.
    final controllers = {
      "Nombre Completo": TextEditingController(),
      "Teléfono": TextEditingController(),
      "Correo": TextEditingController(),
      "Contraseña": TextEditingController(),
      "Repetir Contraseña": TextEditingController(),
    };

    return Scaffold(
      body: Container(
        color: theme.color("primary"),
        child: Column(
          children: [
            const Logo(height: 90),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 30, left: 15, right: 15),
                width: 420,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.8,
                      child: const Text(
                        'Registrarse',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFE6C068),
                          fontSize: 30,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Por favor llene todos\nlos campos requeridos',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    for (var item in lista)
                      Column(
                        children: [
                          CustomTextFormField(
                            labelText: item,
                            controller: controllers[item] ?? TextEditingController(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
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
                    const SizedBox(height: 5),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: '¿Ya estás registrado? ',
                          style: const TextStyle(color: Color(0xFF908E8E)),
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
            )
          ],
        ),
      ),
    );
  }
}

