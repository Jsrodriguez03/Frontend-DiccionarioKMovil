import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/providers/nav_provider.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/WidgetsHomeCategory/category_carousel.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/WidgetsHomeCategory/fondo_degradrado_home_category.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/ImagenProfile/imagen_profile.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final navProvider = context.watch<NavProvider>();
    return Scaffold(
      backgroundColor: AppTheme.primary,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset(
              navProvider.categories[navProvider.page]['image'],
              fit: BoxFit.cover,
            ),
            const FondoDegradado(),
            CategoryCarousel(categories: navProvider.categories),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.05,
              left: 0,
              right: 0,
              child: Logo(heigth: MediaQuery.of(context).size.height * 0.12),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70),
        child: Column(
          children: [
            GestureDetector(
              child: const ImagenPerfil(),
              onTap: () {
                Get.toNamed("/profile");
              },
            ),
          ],
        ),
      ),
    );
  }
}
