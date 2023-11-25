import 'package:flutter/material.dart';
import 'package:frontend_diccionario/domain/entities/user.dart';

class LoginProvider extends ChangeNotifier {
  String _token = "";
  User _user = User();

  String get token => _token;
  User get user => _user;
  String? get getLogo => user.dataUser?.logo;

  set token(String token) {
    _token = token;
    notifyListeners();
  }

  set user(User user) {
    _user = user;
    notifyListeners();
  }

  Future<void> closeSession() async {
    _token = "";
    _user = User();
    notifyListeners();
  }

  void updateUser(User newUser) {
    user.email = newUser.email.isEmpty ? user.email : newUser.email;
    user.fullName = newUser.fullName.isEmpty ? user.fullName : newUser.fullName;
    user.userName = newUser.userName.isEmpty ? user.userName : newUser.userName;
    notifyListeners();
  }
}
