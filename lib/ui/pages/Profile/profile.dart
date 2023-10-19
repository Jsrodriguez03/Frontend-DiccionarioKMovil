import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/CustomElevationButtom.dart';
import 'package:frontend_diccionario/ui/widgets/Navbar/navbar.dart';
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
          SizedBox(
            height: 70,
            width: 1200,
            child: Image.asset("assets/Logo.jpeg", fit: BoxFit.contain),
          ),
          CustomElevatedButton(
            buttonText: "Agregar Palabra",
            onPressed: () {
              Get.toNamed("/add-word");
            },
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
            buttonText: "Editar Palabras",
            onPressed: () {
              Get.toNamed("/edit-word");
            },
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
            buttonText: "Editar Perfil",
            onPressed: () {
              Get.toNamed("/edit-profile");
            },
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
            buttonText: "Comentarios",
            onPressed: () {
              Get.toNamed("/feedback");
            },
          ),
          const SizedBox(height: 10),
          CustomElevatedButton(
            buttonText: "Login",
            onPressed: () {
              Get.toNamed("/login-in");
            },
          ),
        ],
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}
