import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/Widgets/TextFormField/CustomTextfield.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo_flecha.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    double screenWidth = MediaQuery.of(context).size.width;
    final lista = [
      "Nuevo Nombre",
      "Nuevo Email",
      "Nuevo Telefono",
      "Descripcion"
    ];

    return Scaffold(
      backgroundColor: theme.color("primary"),
      body: Column(
        children: [
          const LogoFlecha(navigation: "/profile"),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: screenWidth * 0.9,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                //color: theme.color("fourth"),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListView(
                children: [
                  SizedBox(
                    width: screenWidth * 0.8,
                    child: const Text(
                      'Editar Perfil',
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
                  const SizedBox(
                    height: 20,
                  ),
                  for (var item in lista)
                    Column(
                      children: [
                        item == 'Descripcion'
                            ? CustomTextFormField(
                                labelText: item,
                                lineas: 3,
                              )
                            : CustomTextFormField(labelText: item),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  CustomElevatedButton(buttonText: "Guardar Cambios", onPressed: () {},),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
