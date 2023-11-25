import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/pages/Category/animals_category.dart';
import 'package:frontend_diccionario/ui/pages/Category/body_category.dart';
import 'package:frontend_diccionario/ui/pages/Category/colors_category.dart';
import 'package:frontend_diccionario/ui/pages/Category/numbers_category.dart';
import 'package:frontend_diccionario/ui/providers/nav_provider.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/appBar/custom_appbar.dart';
import 'package:frontend_diccionario/ui/widgets/navbar/navbar.dart';
import 'package:provider/provider.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});
  final pages = const <Widget>[
    AnimalsCategory(),
    ColorsCategory(),
    NumberCategory(),
    BodyCategory(),
  ];

  @override
  Widget build(BuildContext context) {
    int selectedPage = context.watch<NavProvider>().page;
    return Scaffold(
      appBar: CustomAppBar(title: const Logo()),
      backgroundColor: AppTheme.primary,
      body: pages[selectedPage],
      bottomNavigationBar: NavBar(
        selectedIndex: selectedPage,
        onTap: context.read<NavProvider>().updatePage,
      ),
    );
  }
}
