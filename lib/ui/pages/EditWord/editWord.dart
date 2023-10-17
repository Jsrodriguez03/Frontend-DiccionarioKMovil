import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class EditWord extends StatelessWidget {
  const EditWord({super.key});

  @override
  Widget build(BuildContext context) {

    AppTheme theme = AppTheme();

    return Scaffold(
      body: Container(
        color: theme.color("primary"),
        child: Center(
          child: Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10),
              height: 400,
              decoration: BoxDecoration(
                color: theme.color("primary"), // Color de fondo del Container
                borderRadius: BorderRadius.circular(10.0), // Radio de esquinas redondeadas
                border: Border.all(
                  color: theme.color("secondary"), // Color del borde
                  width: 2.0, // Grosor del borde
                ),
              ),
              child: const Column(
                children: [
                  Text("Hola Mundo")
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const NavBarCategory(),
    );
  }
}