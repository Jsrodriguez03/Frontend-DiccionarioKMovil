import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/providers/nav_provider.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/WidgetsHomeCategory/category_carousel.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/WidgetsHomeCategory/fondo_degradrado_home_category.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/ImagenProfile/custom_circle_avatar.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final navProvider = context.watch<NavProvider>();
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [_avatar()],
      ),
      backgroundColor: AppTheme.primary,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset(
              navProvider.categories[navProvider.page]['image'],
              fit: BoxFit.cover,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                color: AppTheme.primary.withOpacity(0.3),
              ),
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
    );
  }
}

Widget _avatar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    padding: const EdgeInsets.all(2),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(100)),
    ),
    child: GestureDetector(
      child: const CustomCircleAvatar(iconSize: 30, iconCamera: false),
      onTap: () {
        Get.toNamed("/profile");
      },
    ),
  );
}
