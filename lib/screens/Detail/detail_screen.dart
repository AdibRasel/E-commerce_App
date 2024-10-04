import 'package:ecommerce/constants.dart';
import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/Detail/Widget/detail_app_bar.dart';
import 'package:ecommerce/screens/Detail/Widget/image_slider.dart';
import 'package:ecommerce/screens/Detail/Widget/items_details.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(
        child: Column(
          children: [
            // for back button share and favorite,
            const DetailAppBar(),
            // for detail image slider
            MyImageSlider(
              images: widget.product.image, 
              onChange: (index){
                setState((){
                  currentImage = index;
                });
              }
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index)=> AnimatedContainer(
                  duration: const Duration(microseconds: 300
                ),
                width: currentImage == index ?15:8 , 
                height: 8, 
                margin: const EdgeInsets.only(right: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentImage == index ? Colors.black : Colors.transparent,
                  border: Border.all(
                    color: Colors.black
                  )
                ),
                )
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40)
                ),
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 100, 
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // for product name, price, rating, and seller
                  ItemsDetails(product: widget.product)

                ],
              ),
            )
          ],
        ),
      )
    );
  }
}