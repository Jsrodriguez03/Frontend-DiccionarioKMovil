import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/Widgets/TextFormField/CustomTextfield.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/CustomElevationButtom.dart';

class FeedBack extends StatelessWidget {
  const FeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    double screenWidth = MediaQuery.of(context).size.width;
    final lista = ["Nombre", "Email", "Comentario"];

    return Scaffold(
      body: Container(
        color: theme.color("primary"),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 70,
              width: screenWidth,
              child: Image.asset("assets/Logo.jpeg", fit: BoxFit.contain),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: screenWidth * 0.9,
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: theme.color("fourth"),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListView(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.8,
                      child: const Text(
                        'Dejanos Un \nComentario',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFE6C068),
                          fontSize: 30,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    for (var item in lista)
                      Column(
                        children: [
                          item == 'Comentario'
                              ? CustomTextFormField(
                                  labelText: item,
                                  lineas: 3,
                                )
                              : CustomTextFormField(labelText: item),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    const CustomElevatedButton(buttonText: "Guardar Cambios"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}
