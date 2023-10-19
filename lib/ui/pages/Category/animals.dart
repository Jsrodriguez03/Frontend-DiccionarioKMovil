import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart' as nav;
import 'package:animation_search_bar/animation_search_bar.dart'
    show AnimationSearchBar;
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Card/card_widget.dart';

class AnimalsCategory extends StatelessWidget {
  const AnimalsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    TextEditingController controller = TextEditingController();

    return Scaffold(
      backgroundColor: appTheme.color("primary"),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.start, // Alinea el contenido en la parte superior
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
                closeIconColor: appTheme.color("secondary"),
                centerTitle: 'ANIMALES',
                onChanged: (text) => debugPrint(text),
                searchTextEditingController: controller,
                horizontalPadding: 5,
                centerTitleStyle: TextStyle(
                  color: appTheme.color("secondary"),
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
                    CardWidget(titleCard: "Animal"),
                    CardWidget(titleCard: "Animal"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Animal"),
                    CardWidget(titleCard: "Animal"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Animal"),
                    CardWidget(titleCard: "Animal"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Animal"),
                    CardWidget(titleCard: "Animal"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Animal"),
                    CardWidget(titleCard: "Animal"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Animal"),
                    CardWidget(titleCard: "Animal"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Animal"),
                    CardWidget(titleCard: "Animal"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CardWidget(titleCard: "Animal"),
                    CardWidget(titleCard: "Animal"),
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
