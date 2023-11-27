import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/ListManager/list_manager.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/appBar/custom_appbar.dart';

class ManageWord extends StatelessWidget {
  const ManageWord({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> palabras = [
      ["1", "Perro", "Animal"],
      ["2", "Brazo", "Cuerpo"],
      ["3", "Rojo", "Color"],
      ["4", "Dos", "Numero"],
      ["5", "Pierna", "Cuerpo"],
    ];

    return Scaffold(
      appBar: CustomAppBar(title: const Logo()),
      backgroundColor: AppTheme.primary,
      body: ListManage(
        title: "Palabras",
        data: palabras,
        tipo: 1,
      ),
    );
  }
}
