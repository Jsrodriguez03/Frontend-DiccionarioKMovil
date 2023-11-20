import 'package:flutter/material.dart';
import 'package:frontend_diccionario/domain/entities/word.dart';

class WordsProvider extends ChangeNotifier {
  List<Word> words = [];

  Future<void> getWords(List<Word> listWords) async {
    words = listWords;
    notifyListeners();
  }
}
