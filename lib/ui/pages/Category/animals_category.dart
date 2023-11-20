import 'package:flutter/material.dart';
import 'package:frontend_diccionario/domain/entities/word.dart';
import 'package:frontend_diccionario/ui/providers/words_provider.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/page_category.dart';
import 'package:provider/provider.dart';

class AnimalsCategory extends StatelessWidget {
  const AnimalsCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordsProvider = context.watch<WordsProvider>();
    List<Word> animals = [];

    for (var word in wordsProvider.words) {
      if (word.category == "animals") {
        animals.add(word);
      }
    }
    return PageCategory(
      words: animals,
    );
  }
}
