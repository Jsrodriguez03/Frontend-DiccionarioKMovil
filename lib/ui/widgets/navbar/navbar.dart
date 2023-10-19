import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:get/get.dart';

class NavBarCategory extends StatefulWidget {
  const NavBarCategory({
    super.key,
  });

  @override
  State<NavBarCategory> createState() => _NavBarCategoryState();
}

class _NavBarCategoryState extends State<NavBarCategory> {
  int selectedIndex = 0;
  AppTheme theme = AppTheme();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: selectedIndex,
      onTap: (value) {
        setState(() {
          selectedIndex = value;
          final navigationRoutes = [
            "/home",
            "/animals",
            "/colors",
            "/numbers",
            "/bodys",
            "/profile",
          ];
          (navigationRoutes[value] == "/home")
              ? Get.offAllNamed(navigationRoutes[value])
              : Get.toNamed(navigationRoutes[value]);
        });
      },
      backgroundColor: theme.color("primary"),
      selectedItemColor: theme.color("secondary"),
      unselectedItemColor: theme.color("primary"),
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(
          height: 0), // Elimina el espacio para la etiqueta seleccionada
      unselectedLabelStyle: TextStyle(height: 0),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: theme.color("third")),
          activeIcon: Icon(Icons.home, color: theme.color("secondary")),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pets, color: theme.color("third")),
          activeIcon: Icon(Icons.pets, color: theme.color("secondary")),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.palette_rounded, color: theme.color("third")),
          activeIcon:
              Icon(Icons.palette_rounded, color: theme.color("secondary")),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.nineteen_mp_rounded, color: theme.color("third")),
          activeIcon:
              Icon(Icons.nineteen_mp_rounded, color: theme.color("secondary")),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.man, color: theme.color("third")),
          activeIcon: Icon(Icons.man, color: theme.color("secondary")),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_sharp, color: theme.color("third")),
          activeIcon:
              Icon(Icons.account_circle_sharp, color: theme.color("secondary")),
          label: "",
        ),
      ],
    );
  }
}
