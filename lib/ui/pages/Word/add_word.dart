import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/flecha.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/CustomTextfield.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/custom_text.dart';

class AddWord extends StatelessWidget {
  const AddWord({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    final Map<String, List<String>> datos = {
      "Categoria": ["Categoria"],
      "Escritura": [
        "Palabra en Español",
        "Palabra en Kankuamo",
        "Palabra en Ingles"
      ],
      "Audios": ["Audio en Español", "Audio en Kankuamo", "Audio en Ingles"],
      "Imagen": ["Imagen de la palabra"]
    };

    // Mapa que contendrá los controladores, inicializados con controladores por defecto.
    final controllers = {
      "Categoria": TextEditingController(),
      "Palabra en Español": TextEditingController(),
      "Palabra en Kankuamo": TextEditingController(),
      "Palabra en Ingles": TextEditingController(),
      "Audio en Español": TextEditingController(),
      "Audio en Kankuamo": TextEditingController(),
      "Audio en Ingles": TextEditingController(),
      "Imagen de la palabra": TextEditingController(),
    };

    return Scaffold(
      backgroundColor: AppTheme.primary,
      body: ListView(
        children: [
          Stack(
            children: [
              const Positioned(
                top: 0,
                left: 0,
                child: Flecha(navigation: "/manage-word"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Logo(heigth: screenWidth * 0.25),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: screenWidth * 0.9,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    constraints: const BoxConstraints(maxHeight: 720),
                    child: Expanded(
                      child: ListView(
                        children: [
                          SizedBox(
                            width: screenWidth * 0.8,
                            child: const CustomText(
                              title: "Agregar Palabra",
                              colorText: AppTheme.secondary,
                              size: 30,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Por favor ingrese los datos solicitados\npara agregar la palabra deseada',
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
                          for (var entry in datos.entries)
                            Column(
                              children: [
                                Text(
                                  entry.key,
                                  style: const TextStyle(
                                    color: AppTheme.secondary,
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  width: screenWidth * 0.8,
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 3,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: Color(0xFF908E8E),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                for (var elemento in entry.value)
                                  Column(
                                    children: [
                                      // Utiliza ?? para asignar un controlador por defecto si es null.
                                      CustomTextFormField(
                                        labelText: elemento,
                                        controller: controllers[elemento] ??
                                            TextEditingController(),
                                      ),
                                      const SizedBox(height: 10),
                                    ],
                                  ),
                              ],
                            ),
                          const SizedBox(height: 10),
                          CustomElevatedButton(
                            buttonText: "Guardar Cambios",
                            onPressed: () {
                              // Utiliza los controllers para acceder a la información.
                              for (var controller in controllers.entries) {
                                print(
                                    '${controller.key}: ${controller.value.text}');
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
