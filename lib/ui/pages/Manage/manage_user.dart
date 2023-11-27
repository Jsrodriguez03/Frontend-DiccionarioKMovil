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
      ["1", "Luis Pinto", "luis@gmail.com"],
      ["2", "Nayid Castellar", "nayid@gmail.com"],
      ["3", "Junior Rodriguez", "junior@gmail.com"],
      ["4", "Juliana Aaron", "juliana@gmail.com"],
      ["5", "Steven Molina", "steven@gmail.com"],
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
