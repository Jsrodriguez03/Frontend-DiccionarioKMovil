import 'dart:convert';

ChangeResponseModel authModelFromJson(String str) =>
    ChangeResponseModel.fromJson(json.decode(str));

class ChangeResponseModel {
  final String status;

  final String? message;
  final String? error;

  ChangeResponseModel({
    required this.status,
    required this.message,
    required this.error,
  });

  factory ChangeResponseModel.fromJson(Map<String, dynamic> json) =>
      ChangeResponseModel(
        status: json["status"],
        message: json["message"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data["status"] = status;
    data["message"] = message;
    data["error"] = error;

    return data;
  }
}
