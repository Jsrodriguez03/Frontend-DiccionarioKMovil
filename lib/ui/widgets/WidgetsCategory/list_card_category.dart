import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/providers/words_provider.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/card_category.dart';
import 'package:provider/provider.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordsProvider = context.watch<WordsProvider>();
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Cards Por Fila
            crossAxisCount: 2,
            //Tamaño de la Card
            childAspectRatio: MediaQuery.of(context).size.width * 0.00122,
          ),
          itemCount: wordsProvider.words.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
              child: CardCategory(
                word: wordsProvider.words[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
