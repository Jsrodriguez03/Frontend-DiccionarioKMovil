import 'package:frontend_diccionario/config/config.dart';
import 'package:frontend_diccionario/models/login_request_model.dart';
import 'package:frontend_diccionario/models/login_response_model.dart';
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
}
