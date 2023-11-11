import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/scaffold_category.dart';

class NumberCategory extends StatelessWidget {
  const NumberCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScaffoldCategory(
      tittleCategoryScaffold: "NÚMEROS",
      tittleElementScaffold: "Número",
      index: 3,
    );
  }
}
