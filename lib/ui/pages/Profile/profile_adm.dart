import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/CustomElevationButtom.dart';
import 'package:frontend_diccionario/ui/widgets/IconCircleProfile/icon_circle_profile.dart';
import 'package:frontend_diccionario/ui/widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/input_box_profile.dart';

class ProfileAdm extends StatelessWidget {
  const ProfileAdm({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Scaffold(
      backgroundColor: appTheme.color("primary"),
      body: Column(
        children: [
          //LOGO
          SizedBox(
            height: 70,
            width: 1200,
            child: Image.asset("assets/Logo.jpeg", fit: BoxFit.contain),
          ),

          const SizedBox(height: 25),

          //IMAGEN DE PERFIL
          SizedBox(
            width: 139,
            height: 149,
            child: Stack(
              children: [
                IconCircleProfile(
                  directionIconCircle: 0,
                  dimensionIconCircle: 139,
                  colorIconCircle: appTheme.color("fourth"),
                  colorIcon: appTheme.color("third"),
                  iconCircle: Icons.person_rounded,
                  sizeIconCircle: 130,
                ),
                IconCircleProfile(
                  directionIconCircle: 94,
                  dimensionIconCircle: 42,
                  colorIconCircle: appTheme.color("secondary"),
                  colorIcon: Colors.black,
                  iconCircle: Icons.camera_alt,
                )
              ],
            ),
          ),

          const SizedBox(height: 10),
          Text(
            "DATOS BÁSICOS",
            style: TextStyle(
              fontSize: 20,
              color: appTheme.color("secondary"),
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left, // Alineación a la izquierda
          ),

          //DATOS BÁSICO
          //Inputs Datos Básicos
          SizedBox(
            width: 301.50,
            height: 170,
            child: Stack(
              children: [
                //NOMBRE
                ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  children: const [
                    InputBoxProfile(
                      title: "Nombre",
                      value: "Santiago",
                    ),
                    InputBoxProfile(
                      title: "Telefono",
                      value: "3001234567",
                    ),
                    InputBoxProfile(
                      title: "Email",
                      value: "santiago@gmail.com",
                    ),
                  ],
                )
              ],
            ),
          ),

          Text(
            "ADMINISTRACIÓN",
            style: TextStyle(
              fontSize: 20,
              color: appTheme.color("secondary"),
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left, // Alineación a la izquierda
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
            buttonText: "Gestionar Usuarios",
            onPressed: () {},
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
            buttonText: "Gestionar Palabras",
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}
