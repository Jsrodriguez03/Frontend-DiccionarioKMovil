import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Flecha extends StatelessWidget {
  const Flecha({
    super.key,
    required this.navigation,
  });

  final String navigation;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 5),
      child: IconButton(
        onPressed: () {
          Get.toNamed(navigation);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: screenWidth * 0.075,
        ),
      ),
    );
  }
}
