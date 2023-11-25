import 'package:frontend_diccionario/domain/entities/user.dart';

class ChangeRequestModel {
  final User user;

  ChangeRequestModel({
    required this.user,
  });

  Map<String, String> toJson() {
    final data = <String, String>{};
    data["email"] = user.email;
    data["full_name"] = user.fullName;
    data["user_name"] = user.userName;
    data["rol"] = user.rol;
    return data;
  }
}
