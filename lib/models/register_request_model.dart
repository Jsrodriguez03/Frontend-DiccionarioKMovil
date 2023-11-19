class RegisterRequestModel {
  final String fullName;
  final String userName;
  final String email;
  final String password;

  RegisterRequestModel({
    required this.fullName,
    required this.userName,
    required this.email,
    required this.password,
  });

  Map<String, String> toJson() {
    final data = <String, String>{};
    data["fullName"] = fullName;
    data["userName"] = userName;
    data["email"] = email;
    data["password"] = password;

    return data;
  }
}
