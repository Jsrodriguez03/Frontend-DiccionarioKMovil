import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Textos/textos.dart';

class InputBoxProfile extends StatelessWidget {
  final String title;
  final String value;

  const InputBoxProfile({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Column(
      children: [
        SizedBox(
          width: 297,
          height: 43,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 5,
                child: Icon(
                  Icons.person_rounded,
                  color: appTheme.color("third"),
                  size: 35,
                ),
              ),
              Positioned(
                left: 27,
                child: Texto(
                  title: title,
                  colorText: const Color(0xFF908E8E),
                  size: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Positioned(
                left: 27,
                top: 10,
                child: Texto(
                  title: value,
                  colorText: Colors.white,
                  size: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                width: 297,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      style: BorderStyle.solid,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 270,
                top: 10,
                child: Icon(
                  Icons.edit_note_outlined,
                  color: appTheme.color("third"),
                  size: 20,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
