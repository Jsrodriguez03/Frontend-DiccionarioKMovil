import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/pages/widgets.dart';
import 'package:animation_search_bar/animation_search_bar.dart'
    show AnimationSearchBar;

class AnimalsCategory extends StatelessWidget {
  const AnimalsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    Color bgScaffold = const Color(0xFF1F2029);
    Color bgText = const Color(0xFFE6C068);

    return Scaffold(
      backgroundColor: bgScaffold,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Logo
          SizedBox(
            height: 70,
            width: 1200,
            child: Image.asset("assets/Logo.jpeg", fit: BoxFit.contain),
          ),

          Theme(
            data: ThemeData(
              inputDecorationTheme: const InputDecorationTheme(
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: AnimationSearchBar(
                backIconColor: Colors.white,
                searchIconColor: Colors.white,
                closeIconColor: bgText,
                centerTitle: 'ANIMALES',
                onChanged: (text) => debugPrint(text),
                searchTextEditingController: controller,
                horizontalPadding: 5,
                centerTitleStyle: TextStyle(
                  color: bgText,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          //Cards
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardWidget(),
                  CardWidget(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardWidget(),
                  CardWidget(),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: bgText, width: 1.5),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NavBar(icono: Icons.house_rounded, title: "Inicio"),
                  NavBar(icono: Icons.pets, title: "Animales"),
                  NavBar(icono: Icons.palette_rounded, title: "Colores"),
                  NavBar(icono: Icons.nineteen_mp_rounded, title: "Números"),
                  NavBar(icono: Icons.man, title: "Partes del Cuerpo"),
                  NavBar(icono: Icons.account_circle_sharp, title: "Mi Perfil"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.icono, required this.title});

  final Color bgIcon = const Color(0xFF908E8E);
  final IconData icono;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
      child: IconButton(
          tooltip: title,
          icon: Icon(icono),
          color: bgIcon,
          iconSize: 32,
          onPressed: () {}),
    );
  }
}
