import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/Widgets/TextFormField/CustomTextfield.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo_flecha.dart';

class AddWord extends StatelessWidget {
  const AddWord({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
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

    return Scaffold(
      body: Container(
        color: theme.color("primary"),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const LogoFlecha(navigation: "/manage-word"),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 40, top: 20),
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  //color: theme.color("fourth"),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.8,
                      child: Texto(
                          title: "Agregar Palabra",
                          colorText: theme.color("secondary"),
                          size: 30,
                          fontWeight: FontWeight.w700),
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
                      //var categoria = entry.key;
                      //var elementos = entry.value;
                      Column(
                        children: [
                          Text(
                            entry.key,
                            style: TextStyle(
                              color: theme.color("secondary"),
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
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF908E8E),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          for (var elemento in entry.value)
                            Column(
                              children: [
                                CustomTextFormField(labelText: elemento),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            )
                        ],
                      ),
                    CustomElevatedButton(buttonText: "Guardar Cambios", onPressed: (){},),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}
