import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/Widgets/TextFormField/CustomTextfield.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/CustomElevationButtom.dart';

class EditWord extends StatelessWidget {
  const EditWord({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    double screenWidth = MediaQuery.of(context).size.width;
    final lista = [
      "Nueva Categoria",
      "Palabra en Español",
      "Palabra en Kankuamo",
      "Palabra en Ingles"
    ];

    return Scaffold(
      body: Container(
        color: theme.color("primary"),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 70,
              width: screenWidth,
              child: Image.asset("assets/Logo.jpeg", fit: BoxFit.contain),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 40, top: 20),
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: theme.color("fourth"),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.8,
                      child: const Text(
                        'Editar Palabra',
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
                      'Por favor ingrese los datos solicitados\npara editar la palabra seleccionada',
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
                            height: 10,
                          ),
                        ],
                      ),
                    const CustomElevatedButton(buttonText: "Guardar Cambios"),
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
