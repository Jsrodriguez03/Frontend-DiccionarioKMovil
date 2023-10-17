import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/pages/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Color bgScaffold = const Color(0xFF1F2029);
    Color bgText = const Color(0xFFE6C068);
    return Scaffold(
      backgroundColor: bgScaffold,
      body: Column(
        children: [
          SizedBox(
            height: 70,
            width: 1200,
            child: Image.asset("assets/Logo.jpeg", fit: BoxFit.contain),
          ),
          Texto(
              title: "CATEGORIAS",
              colorText: bgText,
              size: 40,
              fontWeight: FontWeight.bold),
          Expanded(
            child: ListView(
              // Usamos ListView para que el contenido sea desplazable
              children: const [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Animales"),
                    CardWidget(titleCard: "Colores"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Números"),
                    CardWidget(titleCard: "Cuerpo"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}


