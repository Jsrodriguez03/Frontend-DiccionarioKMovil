import 'package:flutter/material.dart';
import 'package:frontend_diccionario/services/api_service.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/scaffold_category.dart';
import 'package:get/get.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final String navigation;

  const CategoryCard({
    super.key,
    required this.title,
    required this.image,
    required this.navigation,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if(ScaffoldCategory.words.isEmpty){
          APIService.getWords().then((wordsAPI) =>
          {ScaffoldCategory.words = wordsAPI});
        }else {
          Get.toNamed(navigation);
        }

      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color: AppTheme().color("fourth"),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                margin: const EdgeInsets.only(top: 20),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
              const SizedBox(height: 10),
              Texto(
                title: title,
                colorText: Colors.white,
                size: 30,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
