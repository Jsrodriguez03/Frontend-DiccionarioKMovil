import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class NavBar extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int selectedIndex;

  const NavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => onTap(index),
      currentIndex: selectedIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppTheme.primary,
      items: createItems(),
    );
  }

  List<BottomNavigationBarItem> createItems() {
    final List<IconData> icons = [
      Icons.pets,
      Icons.palette_rounded,
      Icons.nineteen_mp_rounded,
      Icons.man,
    ];

    return List.generate(
      icons.length,
      (index) {
        return BottomNavigationBarItem(
          icon: Icon(
            icons[index],
            color: AppTheme.third,
            size: 30,
          ),
          activeIcon: Icon(
            icons[index],
            color: AppTheme.secondary,
            size: 30,
          ),
          label: "",
        );
      },
    );
  }
}
