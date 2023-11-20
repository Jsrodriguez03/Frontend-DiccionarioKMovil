import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/pages/Category/home_category.dart';
import 'package:frontend_diccionario/ui/pages/Login/login_up.dart';
import 'package:frontend_diccionario/ui/pages/Manage/manage_user.dart';
import 'package:frontend_diccionario/ui/pages/Manage/manage_word.dart';
import 'package:frontend_diccionario/ui/pages/Welcome/welcome.dart';
import 'package:frontend_diccionario/ui/pages/Word/add_word.dart';
import 'package:frontend_diccionario/ui/pages/Category/animals_category.dart';
import 'package:frontend_diccionario/ui/pages/Category/body_category.dart';
import 'package:frontend_diccionario/ui/pages/Category/colors_category.dart';
import 'package:frontend_diccionario/ui/pages/Category/numbers_category.dart';
import 'package:frontend_diccionario/ui/pages/Profile/edit_profile.dart';
import 'package:frontend_diccionario/ui/pages/Word/edit_word.dart';
import 'package:frontend_diccionario/ui/pages/Login/login_in.dart';
import 'package:frontend_diccionario/ui/pages/home_screen.dart';
import 'package:frontend_diccionario/ui/pages/Profile/profile.dart';
import 'package:frontend_diccionario/ui/pages/Profile/profile_adm.dart';
import 'package:frontend_diccionario/ui/providers/login_provider.dart';
import 'package:frontend_diccionario/ui/providers/nav_provider.dart';
import 'package:frontend_diccionario/ui/providers/words_provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => WordsProvider()),
        ChangeNotifierProvider(create: (_) => NavProvider()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kankuamo Dictionary',
        theme: AppTheme.theme(),
        home: const Welcome(),
        routes: {
          //VISTAS JUNIOR
          '/welcome': (context) => const Welcome(),
          '/home-screen': (context) => const HomeScreen(),
          "/animals": (context) => const AnimalsCategory(),
          "/colors": (context) => const ColorsCategory(),
          "/numbers": (context) => const NumberCategory(),
          "/bodys": (context) => const BodyCategory(),
          '/profile': (context) => const Profile(),
          '/home-category': (context) => const HomeCategory(),
          //VISTA TEMPORAL DEL PERFIL DEL ADMINISTRADOR MIENTRAS SE MANEJAN ROLES
          '/profile-adm': (context) => const ProfileAdm(),

          //VISTAS NAYID
          '/edit-word': (context) => const EditWord(),
          '/edit-profile': (context) => const EditProfile(),
          '/add-word': (context) => const AddWord(),
          '/login-in': (context) => const LoginIn(),
          '/login-up': (context) => const LoginUp(),
          '/manage-user': (context) => const ManageUser(),
          '/manage-word': (context) => const ManageWord()
        },
      ),
    );
  }
}
