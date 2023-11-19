class Word {
  final String id;
  final String spanish;
  final String kankuamo;
  final String english;
  final String category;
  final DataWord dataWord;

  Word({
    required this.id,
    required this.spanish,
    required this.kankuamo,
    required this.english,
    required this.category,
    required this.dataWord,
  });
}

class DataWord {
  final String? kankuamoSound;
  final String? englishSound;
  final String? image;

  DataWord({
    required this.kankuamoSound,
    required this.englishSound,
    required this.image,
  });
}
