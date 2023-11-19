import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  String _token = "";

  String get token => _token;

  set token(String token) {
    _token = token;
    notifyListeners();
  }
}
