import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/Home/Widget/home_app_bar.dart';
import 'package:ecommerce/screens/Home/Widget/image_slider.dart';
import 'package:ecommerce/screens/Home/Widget/search_bar.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              SizedBox(height: 35),

              // for custom appbar
              CurrentAppBar(),
              
              SizedBox(height: 20),

              // for search bar
              MySearchBar(),


              SizedBox(height: 20),


              // Image Slider
              ImageSlider()



            ],
          ),
        ),
      ),
    );
  }
}
