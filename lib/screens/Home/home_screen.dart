import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/Home/Widget/category.dart';
import 'package:ecommerce/screens/Home/Widget/home_app_bar.dart';
import 'package:ecommerce/screens/Home/Widget/image_slider.dart';
import 'package:ecommerce/screens/Home/Widget/product_cart.dart';
import 'package:ecommerce/screens/Home/Widget/search_bar.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              const SizedBox(height: 35),

              // for custom appbar
              const CurrentAppBar(),
              
              const SizedBox(height: 20),

              // for search bar
              const MySearchBar(),


              const SizedBox(height: 20),


              // Image Slider
              ImageSlider(currentSlider: currentSlider, onChange: (value){
                setState(() {
                  currentSlider = value;
                });
              }),


              const SizedBox(height: 20),



              // for Category Selection
              const Categories(),


              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For You",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),


              // for Shoping items
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.78,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ), 
                itemCount: products.length,
                itemBuilder: (context, index){
                  return ProductCard(
                    product: products[index]
                    );
                }
              )
              // for Shoping items end




            ],
          ),
        ),
      ),
    );
  }
}
