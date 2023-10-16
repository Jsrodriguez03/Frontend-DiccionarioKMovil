import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/Widgets/Navbar/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: const Center(
          child: Text("Hola Junior"),
        ),
        bottomNavigationBar: const NavBarCategory(),
        
      );
  }
}
