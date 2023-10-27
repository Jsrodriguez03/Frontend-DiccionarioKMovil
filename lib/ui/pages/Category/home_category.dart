import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/WidgetsHomeCategory/category_carousel.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/WidgetsHomeCategory/fondo_degradrado_home_category.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({super.key});

  @override
  HomeCategoryState createState() => HomeCategoryState();
}

class HomeCategoryState extends State<HomeCategory> {
  final int _current = 0;

  final List<dynamic> _categorys = [
    {
      'title': 'Animales',
      'image': 'assets/AnimalsCategory.png',
      'navigation': '/animals',
    },
    {
      'title': 'Colores',
      'image': 'assets/ColoresCategory.png',
      'navigation': '/colors',
    },
    {
      'title': 'Números',
      'image': 'assets/NumbersCategory.png',
      'navigation': '/numbers',
    },
    {
      'title': 'Cuerpo',
      'image': 'assets/BodyPartsCategory.png',
      'navigation': '/bodys',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset(_categorys[_current]['image'], fit: BoxFit.cover),
            const FondoDegradado(),
            CategoryCarousel(
              categories: _categorys,
              currentIndex: _current,
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.01,
              left: 0,
              right: 0,
              child: const Logo(height: 85),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}
