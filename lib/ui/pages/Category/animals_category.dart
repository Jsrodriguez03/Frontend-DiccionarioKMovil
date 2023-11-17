import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/scaffold_category.dart';

class AnimalsCategory extends StatelessWidget {
  const AnimalsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScaffoldCategory(
      tittleCategoryScaffold: "ANIMALES",
      index: 1,
    );
  }
}
