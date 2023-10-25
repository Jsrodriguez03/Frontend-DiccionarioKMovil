import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/InputBoxProfile/input_box_profile.dart';

class DatosBasicos extends StatelessWidget {
  const DatosBasicos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 301.50,
      height: 170,
      child: Stack(
        children: [
          //NOMBRE
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: const [
              InputBoxProfile(
                title: "Nombre",
                value: "Santiago",
                icon: Icons.person_rounded,
              ),
              InputBoxProfile(
                title: "Telefono",
                value: "3001234567",
                icon: Icons.phone,
              ),
              InputBoxProfile(
                title: "Email",
                value: "santiago@gmail.com",
                icon: Icons.alternate_email,
              ),
            ],
          )
        ],
      ),
    );
  }
}
