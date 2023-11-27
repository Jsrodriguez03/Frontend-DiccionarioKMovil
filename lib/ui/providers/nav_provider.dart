import 'package:flutter/material.dart';

class NavProvider extends ChangeNotifier {
  List<dynamic> categories = [
    {
      'title': 'Animales',
      'image': 'assets/AnimalsCategory.png',
      'navigation': '/animals',
    },
    {
      'title': 'Colores',
      'image': 'assets/ColoresCategory.png',
      'navigation': '/colors',
    },
    {
      'title': 'Números',
      'image': 'assets/NumbersCategory.png',
      'navigation': '/numbers',
    },
    {
      'title': 'Cuerpo',
      'image': 'assets/BodyPartsCategory.png',
      'navigation': '/bodys',
    },
  ];

  int page = 0;
  int auxPage = 0;

  void updatePage(int index) {
    page = index;
    notifyListeners();
  }

  void updateAuxPage(int index) {
    auxPage = index;
    notifyListeners();
  }
}
