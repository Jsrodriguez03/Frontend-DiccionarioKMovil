import 'dart:convert';
import 'package:frontend_diccionario/config/config.dart';
import 'package:frontend_diccionario/domain/entities/word.dart';
import 'package:frontend_diccionario/models/change_request_model.dart';
import 'package:frontend_diccionario/models/change_response_model.dart';
import 'package:frontend_diccionario/models/login_request_model.dart';
import 'package:frontend_diccionario/models/auth_response_model.dart';
import 'package:frontend_diccionario/models/register_request_model.dart';
import 'package:frontend_diccionario/models/word_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  static Future<AuthResponseModel> login(LoginRequestModel loginModel) async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/x-www-form-urlencoded",
    };

    var url = Uri.https(Config.apiURL, Config.signin);
    var response = await http.post(
      url,
      headers: requestHeaders,
      body: loginModel.toJson(),
    );

    return authModelFromJson(response.body);
  }

  static Future<AuthResponseModel> signup(
      RegisterRequestModel registerModel) async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/x-www-form-urlencoded",
    };

    var url = Uri.https(Config.apiURL, Config.signup);
    var response = await http.post(
      url,
      headers: requestHeaders,
      body: registerModel.toJson(),
    );
    return authModelFromJson(response.body);
  }

  static Future<List<Word>> getWords(String token) async {
    Map<String, String> requestHeaders = {
      "x-access-token": token,
    };

    List<Word> words = [];
    var url = Uri.https(Config.apiURL, Config.words);
    var response = await http.get(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      var body = utf8.decode(response.bodyBytes);
      words = wordModelFromJson(body).data;
    }
    return words;
  }

  static Future<ChangeResponseModel> updateUser(
    String token,
    ChangeRequestModel changeModel,
    String userId,
  ) async {
    var url = Uri.https(Config.apiURL, "${Config.users}/$userId");
    var request = http.MultipartRequest("PATCH", url);

    final dataSave = changeModel.toJson()
      ..removeWhere((key, value) => value.isEmpty);
    request.headers["x-access-token"] = token;
    request.fields.addAll(dataSave);

    final response = await request.send();
    final parseRespose = await http.Response.fromStream(response);
    return changeModelFromJson(parseRespose.body);
  }
}
