import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/Navbar/navbar.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/WidgetsHomeCategory/fondo_degradrado_home_category.dart';
import 'package:get/get.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({Key? key}) : super(key: key);

  @override
  HomeCategoryState createState() => HomeCategoryState();
}

class HomeCategoryState extends State<HomeCategory> {
  final _carouselController = CarouselController();
  int _current = 0;

  final List<dynamic> _categorys = [
    {
      'title': 'Animales',
      'image': 'assets/AnimalsCategory.png',
      'navigation': '/animals'
    },
    {
      'title': 'Colores',
      'image': 'assets/ColoresCategory.png',
      'navigation': '/colors'
    },
    {
      'title': 'Números',
      'image': 'assets/NumbersCategory.png',
      'navigation': '/numbers'
    },
    {
      'title': 'Cuerpo',
      'image': 'assets/BodyPartsCategory.png',
      'navigation': '/bodys'
    }
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            //IMAGEN DE FONDO Y DEGRADADO
            Image.asset(_categorys[_current]['image'], fit: BoxFit.cover),
            const FondoDegradado(),

            //CARD CATEGORY
            Positioned(
              bottom: 70,
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 410,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.70,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                carouselController: _carouselController,
                items: _categorys.map((category) {
                  return Builder(
                    builder: (BuildContext context) {
                      return InkWell(
                        onTap: () {
                          Get.toNamed(category['navigation']);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: appTheme.color("fourth"),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 320,
                                  margin: const EdgeInsets.only(top: 20),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(category['image'],
                                      fit: BoxFit.cover),
                                ),
                                const SizedBox(height: 10),
                                Texto(
                                    title: category['title'],
                                    colorText: Colors.white,
                                    size: 30,
                                    fontWeight: FontWeight.bold)
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),

            //Logo
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.01,
              left: 0,
              right: 0,
              child: const Logo(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart';
// import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
// import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/WidgetsHomeCategory/category_carousel.dart';
// import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/WidgetsHomeCategory/fondo_degradrado_home_category.dart';

// class HomeCategory extends StatefulWidget {
//   const HomeCategory({super.key});

//   @override
//   HomeCategoryState createState() => HomeCategoryState();
// }

// class HomeCategoryState extends State<HomeCategory> {
//   final int _current = 0;

//   final List<dynamic> _categorys = [
//     {
//       'title': 'Animales',
//       'image': 'assets/AnimalsCategory.png',
//       'navigation': '/animals',
//     },
//     {
//       'title': 'Colores',
//       'image': 'assets/ColoresCategory.png',
//       'navigation': '/colors',
//     },
//     {
//       'title': 'Números',
//       'image': 'assets/NumbersCategory.png',
//       'navigation': '/numbers',
//     },
//     {
//       'title': 'Cuerpo',
//       'image': 'assets/BodyPartsCategory.png',
//       'navigation': '/bodys',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         child: Stack(
//           children: [
//             Image.asset(_categorys[_current]['image'], fit: BoxFit.cover),
//             const FondoDegradado(),
//             CategoryCarousel(
//               categories: _categorys,
//               currentIndex: _current,
//             ),
//             Positioned(
//               bottom: MediaQuery.of(context).size.height * 0.01,
//               left: 0,
//               right: 0,
//               child: const Logo(),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: const NavBarCategory(),
//     );
//   }
// }
