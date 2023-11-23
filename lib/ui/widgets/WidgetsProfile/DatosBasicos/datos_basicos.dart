import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/item_profile.dart';
import 'package:provider/provider.dart';

class DatosBasicos extends StatelessWidget {
  const DatosBasicos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loginProvider = context.watch<LoginProvider>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemProfile(
          title: "Nombre",
          subtitle: loginProvider.user.fullName,
          mainIcon: Icons.person_rounded,
        ),
        ItemProfile(
          title: "Email",
          subtitle: loginProvider.user.email,
          mainIcon: Icons.alternate_email,
        ),
        ItemProfile(
          title: "Nombre de usuario",
          subtitle: loginProvider.user.userName,
          mainIcon: Icons.person,
        ),
      ],
    );
  }
}
