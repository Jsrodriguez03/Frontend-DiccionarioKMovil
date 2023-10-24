import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/buscador_category.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/list_card_category.dart';

class AnimalsCategory extends StatelessWidget {
  const AnimalsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();

    return Scaffold(
      backgroundColor: appTheme.color("primary"),
      body: const Column(
        children: [
          Logo(),
          Buscador(titleCategory: "ANIMALES"),
          ListCard(titleElement: "Animal"),
        ],
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}
