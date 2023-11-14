import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/WidgetsHomeCategory/category_card.dart';

class CategoryCarousel extends StatelessWidget {
  final List<dynamic> categories;
  final int currentIndex;
  final Function(int) updateIndex;

  const CategoryCarousel({
    super.key,
    required this.categories,
    required this.currentIndex,
    required this.updateIndex,
  });

  @override
  Widget build(BuildContext context) {
    final carouselController = CarouselController();
    return Positioned(
      bottom: 70,
      height: MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.55,
          aspectRatio: 16 / 9,
          viewportFraction: 0.70,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            carouselController.animateToPage(index);
            updateIndex(index);
          },
        ),
        carouselController: carouselController,
        items: categories.map((category) {
          return CategoryCard(
            title: category['title'],
            image: category['image'],
            navigation: category['navigation'],
          );
        }).toList(),
      ),
    );
  }
}
