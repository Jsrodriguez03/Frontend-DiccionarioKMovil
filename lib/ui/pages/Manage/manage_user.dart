import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/ListManager/list_manager.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/appBar/custom_appbar.dart';

class ManageUser extends StatelessWidget {
  const ManageUser({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> usuarios = [
      [
        "Luis Pinto",
        "luis@gmail.com",
        "https://exitocol.vtexassets.com/arquivos/ids/15562770-1200-auto?v=638043813618170000&width=1200&height=auto&aspect=true"
      ],
      [
        "Nayid Castellar",
        "nayid@gmail.com",
        "https://exitocol.vtexassets.com/arquivos/ids/8572028-1200-auto?v=637603392898600000&width=1200&height=auto&aspect=true"
      ],
      [
        "Junior Rodriguez",
        "junior@gmail.com",
        "https://exitocol.vtexassets.com/arquivos/ids/19721776-1200-auto?v=638306835973970000&width=1200&height=auto&aspect=true"
      ],
      [
        "Juliana Aaron",
        "juliana@gmail.com",
        "https://exitocol.vtexassets.com/arquivos/ids/19721776-1200-auto?v=638306835973970000&width=1200&height=auto&aspect=true"
      ],
      ["Steven Molina", "steven@gmail.com", ""],
    ];

    return Scaffold(
      appBar: CustomAppBar(title: const Logo()),
      backgroundColor: AppTheme.primary,
      body: ListManage(
        title: "Usuarios",
        data: usuarios,
        tipo: 0,
      ),
    );
  }
}
