import 'package:flutter/material.dart';
import 'package:frontend_diccionario/domain/entities/word.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/card_category.dart';

enum SortType {
  alphabetical,
  numerical,
}

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
    required this.words,
    required this.searchText,
  }) : super(key: key);

  final List<Word> words;
  final String searchText;

  @override
  Widget build(BuildContext context) {
    List<Word> filteredWords = words
        .where((word) =>
            word.spanish.toLowerCase().contains(searchText.toLowerCase()))
        .toList();

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width * 0.00122,
          ),
          itemCount: filteredWords.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
              child: CardCategory(
                word: filteredWords[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
