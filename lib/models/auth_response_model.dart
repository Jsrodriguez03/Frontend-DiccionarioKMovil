import 'dart:convert';
import 'package:frontend_diccionario/domain/entities/user.dart';

AuthResponseModel authModelFromJson(String str) =>
    AuthResponseModel.fromJson(json.decode(str));

class AuthResponseModel {
  final String status;
  final User? user;
  final String? token;
  final String? error;

  AuthResponseModel({
    required this.status,
    required this.user,
    required this.token,
    required this.error,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      AuthResponseModel(
        status: json["status"],
        user: json["user"] != null ? _createUser(json["user"]) : null,
        token: json["token"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data["status"] = status;
    data["user"] = user;
    data["token"] = token;
    data["error"] = error;

    return data;
  }
}

User _createUser(Map<String, dynamic> rawUser) {
  return User(
    id: rawUser["id"],
    email: rawUser["email"],
    userName: rawUser["user_name"],
    fullName: rawUser["full_name"],
    rol: rawUser["rol"],
    dataUser: rawUser["data_user"] == null
        ? DataUser()
        : _createData(rawUser["data_user"]),
  );
}

DataUser _createData(Map<String, dynamic> rawData) {
  return DataUser(logo: rawData["logo"]);
}
