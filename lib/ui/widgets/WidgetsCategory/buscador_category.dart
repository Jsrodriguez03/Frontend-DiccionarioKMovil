import 'package:animation_search_bar/animation_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class Buscador extends StatelessWidget {
  const Buscador({
    Key? key,
    required this.titleCategory,
    required this.onTextChanged,
    required this.controller, 
  }) : super(key: key);

  final String titleCategory;
  final Function(String) onTextChanged;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
        child: AnimationSearchBar(
          // isBackButtonVisible: false,
          backIconColor: Colors.white,
          searchIconColor: Colors.white,
          closeIconColor: AppTheme.secondary,
          centerTitle: titleCategory,
          centerTitleStyle: const TextStyle(
            color: AppTheme.secondary,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),

          onChanged: (text) => onTextChanged(text),
          searchTextEditingController: controller,
          horizontalPadding: 5,
        ),
      ),
    );
  }
}
