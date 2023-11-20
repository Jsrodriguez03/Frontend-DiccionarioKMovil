import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/CustomTextfield.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/flecha.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final lista = ["Nuevo Nombre", "Nuevo Email", "Nuevo nombre de usuario"];

    // Mapa de controladores para gestionar la información de los campos.
    final controllers = {
      "Nuevo Nombre": TextEditingController(),
      "Nuevo Email": TextEditingController(),
      "Nuevo nombre de usuario": TextEditingController(),
    };

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.primary,
        body: ListView(
          children: [
            Stack(
              children: [
                const Positioned(
                  top: 0,
                  left: 0,
                  child: Flecha(navigation: "/profile"),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight * 0.1),
                    Logo(heigth: screenWidth * 0.25),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      constraints: const BoxConstraints(maxHeight: 500),
                      width: screenWidth * 0.9,
                      child: Column(
                        children: [
                          SizedBox(
                            width: screenWidth * 0.8,
                            child: const Text(
                              'Editar Perfil',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFE6C068),
                                fontSize: 40,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Por favor ingrese los datos solicitados\npara editar su perfil',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          const SizedBox(height: 20),
                          for (var item in lista)
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                item == 'Descripcion'
                                    ? CustomTextFormField(
                                        labelText: item,
                                        lineas: 3,
                                        controller: controllers[item] ??
                                            TextEditingController(),
                                      )
                                    : CustomTextFormField(
                                        labelText: item,
                                        controller: controllers[item] ??
                                            TextEditingController(),
                                      ),
                                const SizedBox(height: 10),
                              ],
                            ),
                          CustomElevatedButton(
                            buttonText: "Guardar Cambios",
                            onPressed: () {
                              // Usa los controladores para acceder a la información del formulario.
                              for (var controller in controllers.entries) {
                                print(
                                    '${controller.key}: ${controller.value.text}');
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
