import 'package:animation_search_bar/animation_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class Buscador extends StatelessWidget {
  const Buscador({
    super.key,
    required this.titleCategory,
  });

  final String titleCategory;

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    TextEditingController controller = TextEditingController();
    return Theme(
      data: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: AnimationSearchBar(
          isBackButtonVisible: false,
          searchIconColor: Colors.white,
          closeIconColor: appTheme.color("secondary"),
          centerTitle: titleCategory,
          onChanged: (text) => debugPrint(text),
          searchTextEditingController: controller,
          horizontalPadding: 10,
          centerTitleStyle: TextStyle(
            color: appTheme.color("secondary"),
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
