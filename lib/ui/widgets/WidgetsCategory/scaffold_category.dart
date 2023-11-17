import 'package:flutter/material.dart';
import 'package:frontend_diccionario/models/word_model.dart';
import 'package:frontend_diccionario/services/api_service.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/buscador_category.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/list_card_category.dart';
import 'package:frontend_diccionario/ui/widgets/navbar/navbar.dart';

class ScaffoldCategory extends StatelessWidget {
  const ScaffoldCategory({
    super.key,
    required this.tittleCategoryScaffold,
    required this.index,
  });

  final String tittleCategoryScaffold;
  final int index;

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();

    return Scaffold(
      backgroundColor: appTheme.color("primary"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Logo(heigth: 100),
          Buscador(titleCategory: tittleCategoryScaffold),
          ListCard(
            category: tittleCategoryScaffold,
          ),
        ],
      ),
      bottomNavigationBar: NavBarCategory(selectedIndex: index),
    );
  }
}
