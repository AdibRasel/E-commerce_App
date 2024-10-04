
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CurrentAppBar extends StatelessWidget {
  const CurrentAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
              backgroundColor: kcontentColor,
                padding: const EdgeInsets.all(2),
            ),
          onPressed: (){},
          icon: Image.asset(
            "images/icon.png",
            height: 20,
          ),
        ),
        const Text(
          "Rasel's Shop",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500
          ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(2),
          ),
          onPressed: (){},
            iconSize: 30,
          icon: const Icon(Icons.notifications_outlined)
        ),
      ],
    );
  }
}
