import 'dart:convert';

class LoginResponseModel {
  late final String status;
  late final String? token;
  late final String? error;

  LoginResponseModel({required this.status, required this.token});
  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    token = json["token"];
    error = json["error"];
  }

  Map<String, String?> toJson() {
    final data = <String, String?>{};
    data["status"] = status;
    data["token"] = token;
    data["error"] = error;

    return data;
  }
}

LoginResponseModel loginResponseModel(String str) =>
    LoginResponseModel.fromJson(json.decode(str));
