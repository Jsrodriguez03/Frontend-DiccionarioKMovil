import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/CustomElevationButtom.dart';
import 'package:frontend_diccionario/ui/widgets/IconCircleProfile/icon_circle_profile.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/widgets/TextFormField/input_box_profile.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Scaffold(
      backgroundColor: appTheme.color("primary"),
      body: Column(
        children: [
          const Logo(),
          const SizedBox(height: 15),
          ImagenPerfil(appTheme: appTheme),

          Texto(
            title: "DATOS BÁSICOS",
            colorText: appTheme.color("secondary"),
            size: 20,
            fontWeight: FontWeight.w900,
          ),

          //DATOS BÁSICO
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
                      icon: Icons.person_rounded,
                    ),
                    InputBoxProfile(
                      title: "Telefono",
                      value: "3001234567",
                      icon: Icons.phone,
                    ),
                    InputBoxProfile(
                      title: "Email",
                      value: "santiago@gmail.com",
                      icon: Icons.alternate_email,
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
                Texto(
                    title: 'DESCRIPCIÓN',
                    colorText: appTheme.color("secondary"),
                    size: 20,
                    fontWeight: FontWeight.w900)
              ],
            ),
          ),
          const SizedBox(height: 18),
          CustomElevatedButton(
            buttonText: "Cerrar Sesión",
            onPressed: () {
              Get.toNamed("/welcome");
            },
          )
        ],
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}

class ImagenPerfil extends StatelessWidget {
  const ImagenPerfil({
    super.key,
    required this.appTheme,
  });

  final AppTheme appTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 129,
      height: 139,
      child: Stack(
        children: [
          IconCircleProfile(
            directionIconCircle: 0,
            dimensionIconCircle: 119,
            colorIconCircle: appTheme.color("fourth"),
            colorIcon: appTheme.color("third"),
            iconCircle: Icons.person_rounded,
            sizeIconCircle: 120,
          ),
          IconCircleProfile(
            directionIconCircle: 84,
            dimensionIconCircle: 32,
            colorIconCircle: appTheme.color("secondary"),
            colorIcon: Colors.black,
            iconCircle: Icons.camera_alt,
          )
        ],
      ),
    );
  }
}
