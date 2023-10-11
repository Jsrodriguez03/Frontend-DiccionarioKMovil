import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Paleta de Colores
Color bgCard = const Color(0xFF30313A);
Color bgText = const Color(0xFFE6C068);

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.titleCard});

  final String titleCard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: Get.width * 0.45,
        child: Card(
          color: bgCard,
          shadowColor: Colors.black,
          elevation: 8,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                child: SizedBox(
                  height: 100,
                  width: 1000,
                  child: Image.asset("assets/imagen.png", fit: BoxFit.fill),
                ),
              ),

              // Botones y Nombre del Animal
              Texto(
                title: titleCard,
                colorText: bgText,
                size: 25,
                fontWeight: FontWeight.normal,
              ),

              const Button(titulo: "Kankuamo"),
              const Button(titulo: "Inglés"),
            ],
          ),
        ),
      ),
    );
  }
}

class Texto extends StatelessWidget {
  const Texto({
    super.key,
    required this.title,
    required this.colorText,
    required this.size,
    required this.fontWeight,
  });

  final String title;
  final Color colorText;
  final double size;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: colorText,
            fontSize: size,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key, required this.titulo});
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: Get.width * 0.4,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1F2029),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 15.5),
          ),
          onPressed: () {},
          child: Text(titulo),
        ),
      ),
    );
  }
}

class NavBarCategory extends StatelessWidget {
  const NavBarCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: bgText, width: 1.5),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconBar(
              icono: Icons.house_rounded,
              title: "Inicio",
              navegacion: "/home",
            ),
            IconBar(
                icono: Icons.pets, title: "Animales", navegacion: "/animals"),
            IconBar(
                icono: Icons.palette_rounded,
                title: "Colores",
                navegacion: "/colors"),
            IconBar(
                icono: Icons.nineteen_mp_rounded,
                title: "Números",
                navegacion: "/numbers"),
            IconBar(
                icono: Icons.man,
                title: "Partes del Cuerpo",
                navegacion: "/bodys"),
            IconBar(
                icono: Icons.account_circle_sharp,
                title: "Mi Perfil",
                navegacion: "/home"),
          ],
        ),
      ),
    );
  }
}

class IconBar extends StatelessWidget {
  const IconBar(
      {super.key,
      required this.icono,
      required this.title,
      required this.navegacion});

  final Color bgIcon = const Color(0xFF908E8E);
  final IconData icono;
  final String title;
  final String navegacion;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
        child: IconButton(
          tooltip: title,
          icon: Icon(icono),
          color: bgIcon,
          iconSize: 32,
          onPressed: () {
            (navegacion == "/home")
                ? Get.offAllNamed(navegacion)
                : Get.toNamed(navegacion);
          },
        ));
  }
}
