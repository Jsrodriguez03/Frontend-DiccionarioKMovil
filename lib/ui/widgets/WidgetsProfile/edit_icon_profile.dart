import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:get/get.dart';

class EditIconProfile extends StatelessWidget {
  const EditIconProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Positioned(
      left: 240,
      top: 0,
      child: IconButton(
        onPressed: () {
          Get.toNamed("/edit-profile");
        },
        icon: Icon(
          Icons.edit_note_outlined,
          color: appTheme.color("third"),
          size: 20,
        ),
      ),
    );
  }
}
