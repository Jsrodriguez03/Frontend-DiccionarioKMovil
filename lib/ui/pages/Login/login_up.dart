// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/models/register_request_model.dart';
import 'package:frontend_diccionario/services/api_service.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:frontend_diccionario/ui/widgets/Alert/custom_alert.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/CustomTextfield.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/custom_text.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


class LoginUp extends StatefulWidget {
  const LoginUp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginUpState createState() => _LoginUpState();
}

class _LoginUpState extends State<LoginUp> {
  bool isLoading = false;

  late List<String> lista;

  // Mapa que contendrá los controladores, inicializados con controladores por defecto.
  late Map<String, TextEditingController> controllers;

  @override
  void initState() {
    super.initState();
    lista = ["Nombre Completo", "Apodo", "Correo Electronico", "Contraseña", "Repetir Contraseña"];

    // Initialize controllers in initState
    controllers = {
      lista[0]: TextEditingController(),
      lista[1]: TextEditingController(),
      lista[2]: TextEditingController(),
      lista[3]: TextEditingController(),
      lista[4]: TextEditingController(),
    };
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final loginProvider = context.watch<LoginProvider>();

    return Scaffold(
      backgroundColor: AppTheme.primary,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight * 0.07),
                    Logo(heigth: screenWidth * 0.27),
                    //Registrarse
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      width: screenWidth,
                      constraints: BoxConstraints(maxHeight: screenHeight * 0.75),
                      child: Column(
                        children: [
                          CustomText(
                            title: 'Registrarse',
                            colorText: AppTheme.secondary,
                            size: screenHeight * 0.055,
                            fontWeight: FontWeight.w700,
                          ),
                          const SizedBox(height: 10),
                          CustomText(
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

                              // Show loading indicator
                              setState(() {
                                isLoading = true;
                              });

                              try {
                                final response = await APIService.signup(registerModel);

                                if (response.status == "CREATED") {
                                  loginProvider.token = response.token!;
                                  loginProvider.user = response.user!;
                                  Get.toNamed("/home-screen");
                                } else {
                                  // Show custom alert on error
                                  print(response.error);
                                  CustomAlert(message: response.error).show(context);
                                }
                              } catch (error) {
                                // Show custom alert on error
                                print(error);
                                CustomAlert(message: error.toString()).show(context);
                              } finally {
                                // Hide loading indicator
                                setState(() {
                                  isLoading = false;
                                });
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
          // Loading indicator
          if (isLoading)
            Container(
              color: Colors.black.withOpacity(0.5),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
