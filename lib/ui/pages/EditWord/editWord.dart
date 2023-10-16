import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart';

class EditWord extends StatelessWidget {
  const EditWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: 48.0,
            height: 48.0,
        ),
      ),
        bottomNavigationBar: const NavBarCategory(),
    );
  }
}