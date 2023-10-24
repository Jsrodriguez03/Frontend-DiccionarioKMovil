import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/buscador_category.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/list_card_category.dart';

class ScaffoldCategory extends StatelessWidget {
  const ScaffoldCategory({
    super.key,
    required this.tittleCategoryScaffold,
    required this.tittleElementScaffold,
  });

  final String tittleCategoryScaffold;
  final String tittleElementScaffold;

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Scaffold(
      backgroundColor: appTheme.color("primary"),
      body: Column(
        children: [
          const Logo(),
          Buscador(titleCategory: tittleCategoryScaffold),
          ListCard(titleElement: tittleElementScaffold),
        ],
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}
