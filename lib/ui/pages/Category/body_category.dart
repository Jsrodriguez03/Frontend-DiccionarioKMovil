import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/scaffold_category.dart';

class BodyCategory extends StatelessWidget {
  const BodyCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScaffoldCategory(
      tittleCategoryScaffold: "CUERPO",
      index: 4,
    );
  }
}
