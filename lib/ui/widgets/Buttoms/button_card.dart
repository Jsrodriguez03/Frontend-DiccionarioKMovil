import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:get/get.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({
    super.key,
    required this.titulo,
    required this.sound,
  });

  final String titulo;
  final String? sound;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: SizedBox(
        width: Get.width * 0.39,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.primary,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 16),
          ),
          onPressed: () {
            playSound();
          },
          child: Text(titulo),
        ),
      ),
    );
  }

  void playSound() async {
    AudioPlayer audioPlayer = AudioPlayer();
    sound == null
        ? debugPrint("No sound")
        : await audioPlayer.play(UrlSource(sound!));
  }
}
