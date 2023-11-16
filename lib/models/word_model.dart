class WordModel {
  late final String? id;
  late final String? spanish;
  late final String? kankuamo;
  late final String? english;
  late final String? category;
  late final Map<String, dynamic>? dataWord;

  WordModel({
    required this.id,
    required this.spanish,
    required this.kankuamo,
    required this.english,
    required this.category,
    required this.dataWord,
  });
  WordModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    spanish = json["spanish"];
    kankuamo = json["kankuamo"];
    english = json["english"];
    category = json["category"];
    dataWord = json["data_word"];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data["id"] = id;
    data["spanish"] = spanish;
    data["kankuamo"] = kankuamo;
    data["english"] = english;
    data["category"] = category;
    data["data_word"] = dataWord;
    return data;
  }
}