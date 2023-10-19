import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart' as nav;
import 'package:animation_search_bar/animation_search_bar.dart'
    show AnimationSearchBar;
import 'package:frontend_diccionario/ui/widgets/Card/card_widget.dart';

class NumberCategory extends StatelessWidget {
  const NumberCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    Color bgScaffold = const Color(0xFF1F2029);
    Color bgText = const Color(0xFFE6C068);

    return Scaffold(
      backgroundColor: bgScaffold,
      body: Column(
        children: [
          // Logo
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
                centerTitle: 'NÚMEROS',
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

          // Cards
          Expanded(
            child: ListView(
              // Usamos ListView para que el contenido sea desplazable
              children: const [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Número"),
                    CardWidget(titleCard: "Número"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Número"),
                    CardWidget(titleCard: "Número"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Número"),
                    CardWidget(titleCard: "Número"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Número"),
                    CardWidget(titleCard: "Número"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Número"),
                    CardWidget(titleCard: "Número"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Número"),
                    CardWidget(titleCard: "Número"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Número"),
                    CardWidget(titleCard: "Número"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Número"),
                    CardWidget(titleCard: "Número"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const nav.NavBarCategory(),
    );
  }
}
