import 'package:flutter/material.dart';

class CustomAlert extends StatefulWidget {
  final String? message;

  const CustomAlert({Key? key, required this.message}) : super(key: key);

  @override
  TopAlertState createState() => TopAlertState();

  void show(BuildContext context) {
    TopAlertState._showAlert(context, message ?? "");
  }
}

class TopAlertState extends State<CustomAlert> {
  OverlayEntry? overlayEntry;
  bool isAlertVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(); // No se renderiza nada aquí, ya que se controla a través de OverlayEntry
  }

  static Future<void> _showAlert(BuildContext context, String message) async {
    var overlay = Overlay.of(context);
    OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 0,
        width: MediaQuery.of(context).size.width,
        child: Material(
          color: Colors.transparent,
          child: Container(
            alignment: Alignment.topCenter,
            child: AlertDialog(
              content: Text(message),
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);

    // Espera 1 segundo
    await Future.delayed(const Duration(seconds: 1));

    overlayEntry.remove();
  }
}
