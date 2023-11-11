import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:get/get.dart';

class NavBarCategory extends StatefulWidget {
  final int selectedIndex;

  const NavBarCategory({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  State<NavBarCategory> createState() => _NavBarCategoryState();
}

class _NavBarCategoryState extends State<NavBarCategory> {
  late int selectedIndex;
  final AppTheme theme = AppTheme();
  final List<String> navigationRoutes = [
    "/homeCategory",
    "/animals",
    "/colors",
    "/numbers",
    "/bodys",
    "/profile",
  ];

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  void onNavigationTapped(int index) {
    setState(() {
      selectedIndex = index;
      final String route = navigationRoutes[index];
      (route == "/home")
          ? Get.offAllNamed(route)
          : Get.toNamed(route);
    });
  }

  BottomNavigationBarItem buildNavItem(
    IconData icon, {
    required String route,
    required String activeColor,
    required String inactiveColor,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(icon, color: theme.color(inactiveColor)),
      activeIcon: Icon(icon, color: theme.color(activeColor)),
      label: "",
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      currentIndex: selectedIndex,
      onTap: onNavigationTapped,
      backgroundColor: theme.color("primary"),
      selectedItemColor: theme.color("secondary"),
      unselectedItemColor: theme.color("primary"),
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(height: 0),
      unselectedLabelStyle: const TextStyle(height: 0),
      items: [
        buildNavItem(Icons.home, route: "/home", activeColor: "secondary", inactiveColor: "third"),
        buildNavItem(Icons.pets, route: "/animals", activeColor: "secondary", inactiveColor: "third"),
        buildNavItem(Icons.palette_rounded, route: "/colors", activeColor: "secondary", inactiveColor: "third"),
        buildNavItem(Icons.nineteen_mp_rounded, route: "/numbers", activeColor: "secondary", inactiveColor: "third"),
        buildNavItem(Icons.man, route: "/bodys", activeColor: "secondary", inactiveColor: "third"),
        buildNavItem(Icons.account_circle_sharp, route: "/profile", activeColor: "secondary", inactiveColor: "third"),
      ],
    );
  }
}
