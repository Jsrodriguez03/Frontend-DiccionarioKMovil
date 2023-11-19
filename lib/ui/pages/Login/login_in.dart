import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/models/login_request_model.dart';
import 'package:frontend_diccionario/services/api_service.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:frontend_diccionario/ui/widgets/Alert/custom_alert.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/flecha.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/CustomTextfield.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';

class LoginIn extends StatefulWidget {
  const LoginIn({Key? key}) : super(key: key);

  @override
  State<LoginIn> createState() => _LoginInState();
}

class _LoginInState extends State<LoginIn> {
  AppTheme theme = AppTheme();
  bool isLoading = false;
  String? message;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final loginProvider = context.watch<LoginProvider>();

    return Scaffold(
      backgroundColor: theme.color("primary"),
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        opacity: 0.5,
        color: Colors.black,
        progressIndicator: const CircularProgressIndicator(),
        child: Stack(
          children: [
            // Flecha
            const Positioned(
              top: 0,
              left: 0,
              child: Flecha(navigation: "/welcome"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Logo(heigth: screenWidth * 0.35),
                // Inicio de Sesión
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  width: 420,
                  constraints: const BoxConstraints(maxHeight: 410),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Texto(
                          title: 'Iniciar sesión',
                          colorText: theme.color("secondary"),
                          size: 35,
                          fontWeight: FontWeight.w700,
                        ),
                        const SizedBox(height: 10),
                        const SizedBox(height: 20),
                        Column(
                          children: [
                            CustomTextFormField(
                              labelText: "Correo",
                              controller: emailController,
                            ),
                            const SizedBox(height: 15),
                            CustomTextFormField(
                              labelText: "Contraseña",
                              controller: passwordController,
                            ),
                            const SizedBox(height: 15),
                          ],
                        ),
                        const SizedBox(height: 10),
                        CustomElevatedButton(
                          buttonText: "Continuar",
                          onPressed: () async {
                            final email = emailController.value.text;
                            final password = passwordController.value.text;

                            // Cerrar teclado suave
                            FocusScope.of(context).unfocus();

                            // Realizar acciones con la información ingresada
                            LoginRequestModel loginModel = LoginRequestModel(
                              email: email,
                              password: password,
                            );

                            setState(() {
                              isLoading = true; // Iniciar indicador de progreso
                            });

                            try {
                              var response = await APIService.login(loginModel);
                              if (response.status == "FOUND") {
                                loginProvider.token = response.token!;
                                Get.toNamed("/homeCategory");
                              } else {
                                setState(() {
                                  message = response.error;
                                  CustomAlert(message: message).show(context);
                                });
                              }
                            } catch (error) {
                              // Manejar errores específicos aquí
                              print("Error en la llamada a la API: $error");
                              // ignore: use_build_context_synchronously
                              const CustomAlert(
                                      message:
                                          "Correo o contraseña incorrectos!!")
                                  .show(context);
                            } finally {
                              setState(() {
                                isLoading = false;
                              });
                            }
                          },
                        ),
                        // Mensaje de Registrarse
                        const SizedBox(height: 10),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: '¿No tienes cuenta? ',
                              style: const TextStyle(
                                color: Color(0xFF908E8E),
                                fontSize: 15.5,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Registrate',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.toNamed("/login-up");
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
          ],
        ),
      ),
    );
  }
}
