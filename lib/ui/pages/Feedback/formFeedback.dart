import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart';

class FormFeedback extends StatelessWidget {
  const FormFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comentarios')
      ),
      bottomNavigationBar: const NavBarCategory(),
    );
  }
}