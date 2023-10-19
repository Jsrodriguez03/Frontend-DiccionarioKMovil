// // class NavBarCategory extends StatelessWidget {
// //   const NavBarCategory({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.only(top: 10),
// //       child: Container(
// //         decoration: BoxDecoration(
// //           border: Border(
// //             top: BorderSide(color: bgText, width: 1.5),
// //           ),
// //         ),
// //         child: const Row(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             IconBar(
// //               icono: Icons.house_rounded,
// //               title: "Inicio",
// //               navegacion: "/home",
// //             ),
// //             IconBar(
// //                 icono: Icons.pets, title: "Animales", navegacion: "/animals"),
// //             IconBar(
// //                 icono: Icons.palette_rounded,
// //                 title: "Colores",
// //                 navegacion: "/colors"),
// //             IconBar(
// //                 icono: Icons.nineteen_mp_rounded,
// //                 title: "Números",
// //                 navegacion: "/numbers"),
// //             IconBar(
// //                 icono: Icons.man,
// //                 title: "Partes del Cuerpo",
// //                 navegacion: "/bodys"),
// //             IconBar(
// //                 icono: Icons.account_circle_sharp,
// //                 title: "Mi Perfil",
// //                 navegacion: "/home"),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// class IconBar extends StatelessWidget {
//   const IconBar(
//       {super.key,
//       required this.icono,
//       required this.title,
//       required this.navegacion});

//   final Color bgIcon = const Color(0xFF908E8E);
//   final IconData icono;
//   final String title;
//   final String navegacion;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
//         child: IconButton(
//           tooltip: title,
//           icon: Icon(icono),
//           color: bgIcon,
//           iconSize: 32,
//           onPressed: () {
//             (navegacion == "/home")
//                 ? Get.offAllNamed(navegacion)
//                 : Get.toNamed(navegacion);
//           },
//         ));
//   }
// }
