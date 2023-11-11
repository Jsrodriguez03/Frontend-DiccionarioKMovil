import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/icon_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/DataTable/data_table.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo_flecha.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class ManageWord extends StatelessWidget {
  const ManageWord({super.key});

  @override
  Widget build(BuildContext context) {

    AppTheme theme = AppTheme();
    double screenWidth = MediaQuery.of(context).size.width;

    const columnas = ["Id", "Palabra", "Categoria", ""];
    const filas = [
      ["1", "Perro", "Animal"],
      ["2", "Brazo", "Cuerpo"],
      ["3", "Rojo", "Color"],
      ["4", "Dos", "Numero"],
      ["5", "Pierna", "Cuerpo"],
    ];

    return Scaffold(
      backgroundColor: theme.color("primary"),
      body: Column(
        children: [
          const LogoFlecha(navigation: "/profile-adm"),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: screenWidth * 0.9,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                //color: theme.color("fourth"),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListView(
                children: const [
                  Wrap(
                    alignment: WrapAlignment.spaceBetween,
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
                      CustomIconButtom(),
                    ],
                  ),

                  
                  SizedBox(
                    height: 10,
                  ),
                  CustomDataTable(columnas: columnas, filas: filas, tipo: 1,)
                ],
              ),
          ))
        ],
      ),
    );
  }
}