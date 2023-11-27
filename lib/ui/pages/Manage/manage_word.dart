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
      [
        "Perro",
        "Animal",
        "https://exitocol.vtexassets.com/arquivos/ids/15562770-1200-auto?v=638043813618170000&width=1200&height=auto&aspect=true"
      ],
      [
        "Brazo",
        "Cuerpo",
        "https://exitocol.vtexassets.com/arquivos/ids/8572028-1200-auto?v=637603392898600000&width=1200&height=auto&aspect=true"
      ],
      [
        "Rojo",
        "Color",
        "https://exitocol.vtexassets.com/arquivos/ids/19721776-1200-auto?v=638306835973970000&width=1200&height=auto&aspect=true"
      ],
      [
        "Dos",
        "Numero",
        "https://exitocol.vtexassets.com/arquivos/ids/19721776-1200-auto?v=638306835973970000&width=1200&height=auto&aspect=true"
      ],
      ["Pierna", "Cuerpo", ""],
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
