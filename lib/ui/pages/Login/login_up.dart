import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/models/register_request_model.dart';
import 'package:frontend_diccionario/services/api_service.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/CustomTextfield.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class LoginUp extends StatelessWidget {
  const LoginUp({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final loginProvider = context.watch<LoginProvider>();
    final lista = [
      "Nombre Completo",
      "Apodo",
      "Correo Electronico",
      "Contraseña",
      "Repetir Contraseña"
    ];

    // Mapa que contendrá los controladores, inicializados con controladores por defecto.
    final controllers = {
      lista[0]: TextEditingController(),
      lista[1]: TextEditingController(),
      lista[2]: TextEditingController(),
      lista[3]: TextEditingController(),
      lista[4]: TextEditingController(),
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
                              controller: controllers[item]!,
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      const SizedBox(height: 10),
                      CustomElevatedButton(
                        buttonText: "Continuar",
                        onPressed: () async {
                          final fullName = controllers[lista[0]]!.value.text;
                          final userName = controllers[lista[1]]!.value.text;
                          final email = controllers[lista[2]]!.value.text;
                          final password = controllers[lista[3]]!.value.text;

                          final registerModel = RegisterRequestModel(
                            email: email,
                            fullName: fullName,
                            password: password,
                            userName: userName,
                          );

                          try {
                            final response =
                                await APIService.signup(registerModel);

                            if (response.status == "CREATED") {
                              loginProvider.token = response.token!;
                              Get.toNamed("/homeCategory");
                            } else {
                              print(response.error);
                            }
                          } catch (error) {
                            print(error);
                          }
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
