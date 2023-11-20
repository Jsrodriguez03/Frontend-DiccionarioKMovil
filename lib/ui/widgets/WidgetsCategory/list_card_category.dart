import 'package:flutter/material.dart';
import 'package:frontend_diccionario/domain/entities/word.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/card_category.dart';

class ListCard extends StatelessWidget {
  const ListCard({Key? key, required this.words}) : super(key: key);
  final List<Word> words;

  @override
  Widget build(BuildContext context) {
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
          itemCount: words.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
              child: CardCategory(
                word: words[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
