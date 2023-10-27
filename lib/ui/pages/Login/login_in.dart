import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/Widgets/TextFormField/CustomTextfield.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo_flecha.dart';
import 'package:get/get.dart';

class LoginIn extends StatelessWidget {
  const LoginIn({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    double screenWidth = MediaQuery.of(context).size.width;
    final lista = ["Correo", "Contraseña"];

    return Scaffold(
      body: Container(
        color: theme.color("primary"),
        child: Column(
          children: [
            const LogoFlecha(navigation: "/welcome"),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(
                    bottom: 179, top: 70, left: 15, right: 15),
                width: 420,
                decoration: BoxDecoration(
                  //color: theme.color("fourth"),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.8,
                      child: const Text(
                        'Iniciar sesión',
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
                      'Por favor llene todos\nlos campos requesidos',
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
                          CustomTextFormField(labelText: item),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    CustomElevatedButton(
                      buttonText: "Continuar",
                      onPressed: () {
                        Get.toNamed("/homeCategory");
                      },
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
