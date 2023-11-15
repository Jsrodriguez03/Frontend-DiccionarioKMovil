class LoginRequestModel {
  late final String email;
  late final String password;

  LoginRequestModel({required this.email, required this.password});
  LoginRequestModel.fromJson(Map<String, String> json) {
    email = json["email"]!;
    password = json["password"]!;
  }

  Map<String, String> toJson() {
    final data = <String, String>{};
    data["email"] = email;
    data["password"] = password;

    return data;
  }
}
