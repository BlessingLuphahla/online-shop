import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int?) onTabChange;
   BottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 25),
      child: GNav(
        tabMargin: const EdgeInsets.only(top: 20),
        onTabChange: (value) => onTabChange(value),
        tabBorderRadius: 15,
        gap: 5,
        color: Colors.grey[500],
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color: Colors.white),
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: const [
          GButton(
            backgroundColor: Colors.white54,
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            backgroundColor: Colors.white54,
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
