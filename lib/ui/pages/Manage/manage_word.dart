import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/icon_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/DataTable/data_table.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/flecha.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class ManageWord extends StatelessWidget {
  const ManageWord({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    double screenWidth = MediaQuery.of(context).size.width;

    const columnas = ["Id", "Palabra", "Categoria", "Acciones"];
    const filas = [
      ["1", "Perro", "Animal"],
      ["2", "Brazo", "Cuerpo"],
      ["3", "Rojo", "Color"],
      ["4", "Dos", "Numero"],
      ["5", "Pierna", "Cuerpo"],
    ];

    return Scaffold(
      backgroundColor: theme.color("primary"),
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: Flecha(navigation: "/profile"),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(heigth: screenWidth * 0.35),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(10),
                width: screenWidth * 0.9,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                constraints: const BoxConstraints(maxHeight: 500),
                child: const Expanded(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Palabras',
                          style: TextStyle(
                            color: Color(0xFFE6C068),
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        CustomIconButtom(),
                      ],
                    ),
                    SizedBox(height: 10),
                    CustomDataTable(
                      columnas: columnas,
                      filas: filas,
                      tipo: 1,
                    )
                  ],
                )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
