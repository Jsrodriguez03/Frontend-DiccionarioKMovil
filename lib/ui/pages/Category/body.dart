import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/pages/widgets.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart' as nav;
import 'package:animation_search_bar/animation_search_bar.dart'
    show AnimationSearchBar;

class BodyCategory extends StatelessWidget {
  const BodyCategory({Key? key}) : super(key: key);

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
                centerTitle: 'CUERPO',
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
                  CardWidget(titleCard: "Cuerpo"),
                  CardWidget(titleCard: "Cuerpo"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardWidget(titleCard: "Cuerpo"),
                  CardWidget(titleCard: "Cuerpo"),
                ],
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: const nav.NavBarCategory(),
    );
  }
}
