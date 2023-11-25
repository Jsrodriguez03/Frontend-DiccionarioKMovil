import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    Key? key,
    Widget? title,
    bool center = true,
    bool optionsLeading = true,
  }) : super(
          key: key,
          title: title,
          foregroundColor: Colors.white,
          backgroundColor: AppTheme.primary,
          centerTitle: center,
          automaticallyImplyLeading: optionsLeading,
          scrolledUnderElevation: 0,
        );
}
