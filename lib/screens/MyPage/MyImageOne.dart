import 'package:flutter/material.dart';

import '../../constants.dart';

class Myimageone extends StatelessWidget {
  const Myimageone({super.key});

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
          'images/RaselHossainOne.jpg', // Replace with your image path
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
