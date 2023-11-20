import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/providers/nav_provider.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/WidgetsHomeCategory/category_card.dart';
import 'package:provider/provider.dart';

class CategoryCarousel extends StatelessWidget {
  final List<dynamic> categories;

  const CategoryCarousel({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    final carouselController = CarouselController();

    return Positioned(
      bottom: 100,
      height: MediaQuery.of(context).size.height * 0.75,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.5,
          aspectRatio: 16 / 9,
          viewportFraction: 0.70,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            context.read<NavProvider>().updatePage(index);
          },
        ),
        carouselController: carouselController,
        items: categories.map((category) {
          return CategoryCard(
            title: category['title'],
            image: category['image'],
          );
        }).toList(),
      ),
    );
  }
}
