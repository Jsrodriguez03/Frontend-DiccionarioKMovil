import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/pages/Welcome/welcome.dart';
import 'package:frontend_diccionario/ui/pages/Word/addWord.dart';
import 'package:frontend_diccionario/ui/pages/Category/animals.dart';
import 'package:frontend_diccionario/ui/pages/Category/body.dart';
import 'package:frontend_diccionario/ui/pages/Category/colors.dart';
import 'package:frontend_diccionario/ui/pages/Category/numbers.dart';
import 'package:frontend_diccionario/ui/pages/Profile/editProfile.dart';
import 'package:frontend_diccionario/ui/pages/Word/editWord.dart';
import 'package:frontend_diccionario/ui/pages/Feedback/feedback.dart';
import 'package:frontend_diccionario/ui/pages/Login-in/loginIn.dart';
import 'package:frontend_diccionario/ui/pages/Category/home_category.dart';
import 'package:frontend_diccionario/ui/pages/Profile/profile.dart';
import 'package:frontend_diccionario/ui/pages/Profile/profile_adm.dart';
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
      home: const AnimalsCategory(),
      routes: {
        //VISTAS JUNIOR
        '/welcome': (context) => const Welcome(),
        '/homeCategory': (context) => const HomeCategory(),
        "/animals": (context) => const AnimalsCategory(),
        "/colors": (context) => const ColorsCategory(),
        "/numbers": (context) => const NumberCategory(),
        "/bodys": (context) => const BodyCategory(),
        '/profile': (context) => const Profile(),
        //VISTA TEMPORAL DEL PERFIL DEL ADMINISTRADOR MIENTRAS SE MANEJAN ROLES
        '/profile-adm': (context) => const ProfileAdm(),

        //VISTAS NAYID
        '/edit-word': (context) => const EditWord(),
        '/feedback': (context) => const FeedBack(),
        '/edit-profile': (context) => const EditProfile(),
        '/add-word': (context) => const AddWord(),
        '/login-in': (context) => const LoginIn(),
      },
    );
  }
}
