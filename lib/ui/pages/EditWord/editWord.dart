import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/widgets/navbar/navbar.dart';

class EditWord extends StatelessWidget {
  const EditWord({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Hola Mundo"),
      ),
        bottomNavigationBar: NavBarCategory(),
    );
  }
}