import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/pages/AddWord/addWord.dart';
import 'package:frontend_diccionario/ui/pages/Category/animals.dart';
import 'package:frontend_diccionario/ui/pages/Category/body.dart';
import 'package:frontend_diccionario/ui/pages/Category/colors.dart';
import 'package:frontend_diccionario/ui/pages/Category/numbers.dart';
import 'package:frontend_diccionario/ui/pages/EditProfile/editProfile.dart';
import 'package:frontend_diccionario/ui/pages/EditWord/editWord.dart';
import 'package:frontend_diccionario/ui/pages/Feedback/feedback.dart';
import 'package:frontend_diccionario/ui/pages/home.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AddWord(),
      routes: {
        '/home': (context) => const Home(),
        "/animals": (context) => const AnimalsCategory(),
        "/colors": (context) => const ColorsCategory(),
        "/numbers": (context) => const NumberCategory(),
        "/bodys": (context) => const BodyCategory(),
        '/edit-word': (context) => const EditWord(),
        '/feedback' : (context) => const FeedBack(),
        '/edit-profile' : (context) => const EditProfile(),
        '/add-word' : (context) => const AddWord()
      },
    );
  }
}
