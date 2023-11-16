import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/app.dart';
import "package:flutter/services.dart";

void main() {
  //Orientación Vertical
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );

  runApp(const MyApp());
}
