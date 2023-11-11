import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsCategory/card_category.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
    required this.titleElement,
  }) : super(key: key);

  final String titleElement;

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
            childAspectRatio: MediaQuery.of(context).size.width * 0.0017,
          ),
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
              child: CardCategory(titleCard: titleElement),
            );
          },
        ),
      ),
    );
  }
}
