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

    // Ordena la lista según la categoría
    filteredWords.sort((a, b) {
      if (a.category == 'numbers' && b.category == 'numbers') {
        // Si ambos son de la categoría 'numbers', ordénalos numéricamente
        return _compareNumbers(a.spanish, b.spanish);
      } else {
        // En otros casos, ordénalos alfabéticamente por el nombre en español
        return a.spanish.compareTo(b.spanish);
      }
    });

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

  int _compareNumbers(String a, String b) {
    // Función auxiliar para comparar cadenas numéricas
    int intA = _parseNumber(a);
    int intB = _parseNumber(b);
    return intA.compareTo(intB);
  }

  int _parseNumber(String value) {
    final specialNumbers = {
      'cuatro': 4,
    };

    // Intenta buscar el número en los casos especiales
    final specialNumber = specialNumbers[value.toLowerCase()];
    if (specialNumber != null) {
      return specialNumber;
    }

    // Intenta convertir la cadena numérica en un entero
    try {
      return int.parse(value);
    } catch (e) {
      return 0;
    }
  }
}
