import 'dart:convert';

import 'package:frontend_diccionario/config/config.dart';
import 'package:frontend_diccionario/models/login_request_model.dart';
import 'package:frontend_diccionario/models/login_response_model.dart';
import '../models/word_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  static Future<LoginResponseModel> login(LoginRequestModel loginModel) async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/x-www-form-urlencoded",
    };

    var url = Uri.https(Config.apiURL, Config.signin);
    var response = await http.post(
      url,
      headers: requestHeaders,
      body: loginModel.toJson(),
    );

    return loginResponseModel(response.body);
  }

  static Future<List<WordModel>> getWords() async {
    Map<String, String> requestHeaders = {
      "x-access-token": LoginResponseModel.token
    };

    final words = <WordModel>[];
    var url = Uri.https(Config.apiURL, Config.words);
    var response = await http.get(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      var body = json.decode(response.body);
      var data = body["data"];
      data.forEach((item) {
        final word = WordModel.fromJson(item);
        words.add(word);
      });
    }
    return words;
  }
}
