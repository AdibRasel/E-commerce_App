import 'package:ecommerce/Provider/cart_provider.dart';
import 'package:ecommerce/Provider/favorite_provider.dart';
import 'package:ecommerce/screens/nav_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:provider/provider.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_)=> CartProvider(),
      ),
      ChangeNotifierProvider(
        create: (_)=> FavoriteProvider(),
      ),
    ],
    
  
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.mulishTextTheme(),
        ),
        home: const BottomNavBar()
    ));
}


// video link : https://www.youtube.com/watch?v=UHUSqJDKe-Q&t=242s
// work compleate : 10:25
// work compleate : 30:40
// work compleate : 36:40 
// work compleate : 55:09 
// work compleate : 1:13:28
// work compleate : 1:28:03
// work compleate : 1:36:46 - problem - problem solve
// The work of this project has been completed so far. When the complete working of the Flutter is learned then the work will be started again from here. 
// End of work: 1:47:02