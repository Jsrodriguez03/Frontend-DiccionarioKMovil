import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/models/login_request_model.dart';
import 'package:frontend_diccionario/services/api_service.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/flecha.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/CustomTextfield.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:get/get.dart';

class LoginIn extends StatefulWidget {
  const LoginIn({Key? key}) : super(key: key);

  @override
  State<LoginIn> createState() => _LoginInState();
}

class _LoginInState extends State<LoginIn> {
  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    double screenWidth = MediaQuery.of(context).size.width;
    String? message = "";

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: theme.color("primary"),
      body: Stack(
        children: [
          //Flecha
          const Positioned(
            top: 0,
            left: 0,
            child: Flecha(navigation: "/welcome"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(heigth: screenWidth * 0.35),
              //Inicio de Sesión
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                width: 420,
                constraints: const BoxConstraints(maxHeight: 410),
                child: Expanded(
                  child: Column(
                    children: [
                      Texto(
                        title: 'Iniciar sesión',
                        colorText: theme.color("secondary"),
                        size: 35,
                        fontWeight: FontWeight.w700,
                      ),
                      const SizedBox(height: 10),
                      Texto(
                        title: message,
                        colorText: Colors.white,
                        size: 15,
                        fontWeight: FontWeight.w700,
                      ),
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
                        onPressed: () {
                          final email = emailController.text;
                          final password = passwordController.text;

                          // Realizar acciones con la información ingresada
                          LoginRequestModel loginModel = LoginRequestModel(
                            email: email,
                            password: password,
                          );

                          APIService.login(loginModel).then((response) => {
                                if (response.status == "FOUND")
                                  Get.toNamed("/homeCategory")
                                else
                                  setState(() {
                                    message = response.error;
                                  })
                              });
                        },
                      ),

                      //Mensaje de Registrarse
                      const SizedBox(height: 10),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: '¿No tienes cuenta? ',
                            style: const TextStyle(
                                color: Color(0xFF908E8E), fontSize: 15.5),
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
    );
  }
}
