import 'package:flutter/material.dart';
import 'package:frontend_diccionario/services/api_service.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:frontend_diccionario/ui/providers/words_provider.dart';
import 'package:get/get.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:provider/provider.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;

  const CategoryCard({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final loginProvider = context.watch<LoginProvider>();
    final wordsProvider = context.watch<WordsProvider>();

    return InkWell(
      onTap: () async {
        Get.toNamed("/home-category");
        try {
          if (wordsProvider.words.isEmpty) {
            final listWords = await APIService.getWords(loginProvider.token);
            wordsProvider.getWords(listWords);
          }
        } catch (e) {
          print(e);
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          color: AppTheme.fourth,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
