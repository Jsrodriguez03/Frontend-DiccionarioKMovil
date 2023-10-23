import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/CustomElevationButtom.dart';
import 'package:frontend_diccionario/ui/widgets/IconCircleProfile/icon_circle_profile.dart';
import 'package:frontend_diccionario/ui/widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/input_box_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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

          const SizedBox(height: 15),

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

          //Descripción
          SizedBox(
            width: 274.50,
            height: 116,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 1,
                  child: SizedBox(
                    width: 294.50,
                    height: 115,
                    child: Stack(
                      children: [
                        const Positioned(
                          left: 0,
                          top: 33,
                          child: SizedBox(
                            width: 273,
                            child: Text(
                              'Estudiante de la Universidad Popular del Cesar (UPC) Interesado en aprender la lengua kankuama para apoyar los procesos de fortalecimiento cultural.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 255,
                          top: 0,
                          child: SizedBox(
                            width: 19.50,
                            child: Icon(
                              Icons.edit_note_outlined,
                              color: appTheme.color("third"),
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  'DESCRIPCIÓN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFE6C068),
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          CustomElevatedButton(
            buttonText: "Cerrar Sesión",
            onPressed: () {},
          )
        ],
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}
