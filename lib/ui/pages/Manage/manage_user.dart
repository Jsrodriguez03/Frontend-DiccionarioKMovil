import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo_flecha.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class ManageUser extends StatelessWidget {
  const ManageUser({super.key});

  @override
  Widget build(BuildContext context) {

    AppTheme theme = AppTheme();

    return Scaffold(
      backgroundColor: theme.color("primary"),
      body: Column(
        children: [
          const LogoFlecha(navigation: "/profile-adm"),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  
                ],
              ),
          ))
        ],
      ),
    );
  }
}