import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/IconCircleProfile/icon_circle_profile.dart';
import 'package:frontend_diccionario/ui/widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';

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

          const SizedBox(height: 30),

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

          //DATOS BÁSICOS
          Texto(
            title: "DATOS BÁSICOS",
            colorText: appTheme.color("secondary"),
            size: 20,
            fontWeight: FontWeight.w900,
          ),

          //Inputs
          SizedBox(
            width: 301.50,
            height: 170,
            child: Stack(
              children: [
                //NOMBRE
                ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    InputBoxProfile(
                      appTheme: appTheme,
                      title: "Nombre",
                      value: "Santiago",
                    ),
                    InputBoxProfile(
                      appTheme: appTheme,
                      title: "Telefono",
                      value: "3001234567",
                    ),
                    InputBoxProfile(
                      appTheme: appTheme,
                      title: "Email",
                      value: "santiago@gmail.com",
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}

class InputBoxProfile extends StatelessWidget {
  final AppTheme appTheme;
  final String title;
  final String value;

  const InputBoxProfile({
    super.key,
    required this.appTheme,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 297,
          height: 43,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 5,
                child: Icon(
                  Icons.person_rounded,
                  color: appTheme.color("third"),
                  size: 35,
                ),
              ),
              Positioned(
                left: 27,
                child: Texto(
                  title: title,
                  colorText: const Color(0xFF908E8E),
                  size: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Positioned(
                left: 27,
                top: 10,
                child: Texto(
                  title: value,
                  colorText: Colors.white,
                  size: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                width: 297,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      style: BorderStyle.solid,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 270,
                top: 10,
                child: Icon(
                  Icons.edit_note_outlined,
                  color: appTheme.color("third"),
                  size: 20,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
