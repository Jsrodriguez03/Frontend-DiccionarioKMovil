import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsHomeCategory/category_card.dart';

class CategoryCarousel extends StatelessWidget {
  final List<dynamic> categories;
  final int currentIndex;
  final CarouselController controller;

  const CategoryCarousel({
    super.key,
    required this.categories,
    required this.currentIndex,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 410,
        aspectRatio: 16 / 9,
        viewportFraction: 0.70,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          controller.animateToPage(index);
        },
      ),
      carouselController: controller,
      items: categories.map((category) {
        return CategoryCard(
          title: category['title'],
          image: category['image'],
          navigation: category['navigation'],
        );
      }).toList(),
    );
  }
}
