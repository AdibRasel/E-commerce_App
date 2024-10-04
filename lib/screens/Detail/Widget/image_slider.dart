import 'package:flutter/material.dart';

class MyImageSlider extends StatelessWidget {
  final Function (int) onChange;
  final String images; 
  const MyImageSlider({
    super.key,
    required this.images,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        onPageChanged: onChange,
        itemBuilder: (context, index){
          return Image.asset(images);
        },
      ),
    );
  }
}