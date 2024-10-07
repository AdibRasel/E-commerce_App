import 'package:flutter/material.dart';

import '../../constants.dart';

class Myimagetwo extends StatelessWidget {
  const Myimagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      appBar: AppBar(
        backgroundColor: kcontentColor,
        title: const Text(
          "Developer: Rasel Hossain",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Image.asset(
          'images/RaselHossainTwo.jpg', // Replace with your image path
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
