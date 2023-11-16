import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:soundpool/soundpool.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({super.key, required this.titulo});
  final String titulo;

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: SizedBox(
        width: Get.width * 0.39,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: appTheme.color("primary"),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 16),
          ),
          onPressed: () {
            // final player = AudioPlayer();
            // player.play(UrlSource('assets/Yellow.wav'));
            _soundButtom();
          },
          child: Text(titulo),
        ),
      ),
    );
  }

  Future<void> _soundButtom() async {
    Soundpool pool = Soundpool(streamType: StreamType.notification);

    int soundId =
        await rootBundle.load("assets/Yellow.wav").then((ByteData soundData) {
      return pool.load(soundData);
    });
    int streamId = await pool.play(soundId);
  }
}
