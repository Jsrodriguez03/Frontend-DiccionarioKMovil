import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/custom_profile_input.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:provider/provider.dart';

class DatosBasicos extends StatelessWidget {
  const DatosBasicos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.width;
    final loginProvider = context.watch<LoginProvider>();

    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Texto(
            title: "DATOS BÁSICOS",
            colorText: AppTheme.secondary,
            size: screenHeight * 0.05,
            fontWeight: FontWeight.w900,
          ),
          CustomProfileInput(
            title: "Nombre",
            value: loginProvider.user.fullName,
            icon: Icons.person_rounded,
          ),
          CustomProfileInput(
            title: "Email",
            value: loginProvider.user.email,
            icon: Icons.alternate_email,
          ),
          CustomProfileInput(
            title: "Nombre de usuario",
            value: loginProvider.user.userName,
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}
