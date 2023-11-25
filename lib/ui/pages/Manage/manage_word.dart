import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/DataTable/data_table.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/appBar/custom_appbar.dart';

class ManageWord extends StatelessWidget {
  const ManageWord({super.key});

  @override
  Widget build(BuildContext context) {
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
      appBar: CustomAppBar(title: const Text("Palabras")),
      backgroundColor: AppTheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: screenWidth * 0.9,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            constraints: const BoxConstraints(maxHeight: 500),
            child: const Expanded(
                child: Column(
              children: [
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppTheme.secondary,
        child: const Icon(Icons.add, color: AppTheme.primary),
      ),
    );
  }
}
