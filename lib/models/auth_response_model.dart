import 'dart:convert';

class AuthResponseModel {
  final String status;
  final String? token;
  final String? error;

  AuthResponseModel({
    required this.status,
    required this.token,
    required this.error,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      AuthResponseModel(
        status: json["status"],
        token: json["token"],
        error: json["error"],
      );

  Map<String, String?> toJson() {
    final data = <String, String?>{};
    data["status"] = status;
    data["token"] = token;
    data["error"] = error;

    return data;
  }
}

AuthResponseModel authResponseModel(String str) =>
    AuthResponseModel.fromJson(json.decode(str));
