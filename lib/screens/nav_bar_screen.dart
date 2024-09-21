import 'package:ecommerce/constants.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: kprimaryColor,
        child: const Icon(Icons.home, color: Colors.white, size: 35),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.grid_view_outlined,
                    size: 30,
                    color: currentIndex == 0
                        ? kprimaryColor
                        : Colors.grey.shade400)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border,
                    size: 30,
                    color: currentIndex == 1
                        ? kprimaryColor
                        : Colors.grey.shade400)),
            const SizedBox(width: 15),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart_outlined,
                    size: 30,
                    color: currentIndex == 2
                        ? kprimaryColor
                        : Colors.grey.shade400)),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.person,
                    size: 30,
                    color: currentIndex == 3
                        ? kprimaryColor
                        : Colors.grey.shade400)),
          ],
        ),
      ),
    );
  }
}
