import 'package:flutter/material.dart';
import 'package:frontend_diccionario/domain/entities/word.dart';
import 'package:frontend_diccionario/ui/providers/words_provider.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/list_card_category.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/page_category.dart';
import 'package:provider/provider.dart';

class NumberCategory extends StatelessWidget {
  const NumberCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordsProvider = context.watch<WordsProvider>();
    List<Word> body = [];

    for (var word in wordsProvider.words) {
      if (word.category == "numbers") {
        body.add(word);
      }
    }
    return PageCategory(
      words: body,
    );
  }
}
