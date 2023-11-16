import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/scaffold_category.dart';

class NumberCategory extends StatelessWidget {
  const NumberCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldCategory(
      tittleCategoryScaffold: "NÚMEROS",
      index: 3,
    );
  }
}
