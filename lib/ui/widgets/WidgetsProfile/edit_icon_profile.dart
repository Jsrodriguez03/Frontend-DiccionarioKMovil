import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:get/get.dart';

class EditIconProfile extends StatelessWidget {
  const EditIconProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.width;
    return IconButton(
      onPressed: () {
        Get.toNamed("/edit-profile");
      },
      icon: Icon(
        Icons.edit_note_outlined,
        color: AppTheme.third,
        size: screenHeight * 0.06,
      ),
    );
  }
}
