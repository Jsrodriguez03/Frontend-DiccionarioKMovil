import 'package:frontend_diccionario/domain/entities/user.dart';

class ChangeRequestModel {
  final User user;

  ChangeRequestModel({
    required this.user,
  });

  Map<String, String> toJson() {
    final data = <String, String>{};
    return data;
  }
}
