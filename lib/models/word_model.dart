import 'dart:convert';
import 'package:frontend_diccionario/domain/entities/word.dart';

WordModel wordModelFromJson(String str) => WordModel.fromJson(json.decode(str));

class WordModel {
  final String status;
  final List<Word> data;

  WordModel({
    required this.status,
    required this.data,
  });

  factory WordModel.fromJson(Map<String, dynamic> json) => WordModel(
        status: json["status"],
        data: List<Word>.from(json["data"].map((x) => _createWord(x))),
      );
}

Word _createWord(Map<String, dynamic> rawWord) {
  return Word(
    id: rawWord["id"],
    spanish: rawWord["spanish"],
    kankuamo: rawWord["kankuamo"],
    english: rawWord["english"],
    category: rawWord["category"],
    dataWord: _createData(rawWord["data_word"]),
  );
}

DataWord _createData(Map<String, dynamic> rawData) {
  return DataWord(
    kankuamoSound: rawData["kankaumo_sound"],
    englishSound: rawData["english_sound"],
    image: rawData["image"],
  );
}
