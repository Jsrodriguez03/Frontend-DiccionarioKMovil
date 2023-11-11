import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/scaffold_category.dart';

class ColorsCategory extends StatelessWidget {
  const ColorsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScaffoldCategory(
      tittleCategoryScaffold: "COLORES",
      tittleElementScaffold: "Color",
      index: 2,
    );
  }
}
