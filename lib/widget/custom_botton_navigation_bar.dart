import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(13.0),
      ),
      child: GNav(
        backgroundColor: Colors.white.withOpacity(0.4),
        activeColor: Color(0xFFDB3022),
        color: Colors.grey.shade500,
        gap: 2,
        iconSize: 20,
        tabs: [
          GButton(
            icon: CupertinoIcons.home,
            text: 'Home',
          ),
          GButton(
            icon: CupertinoIcons.cart,
            text: 'Shop',
          ),
          GButton(
            icon: CupertinoIcons.bag,
            text: 'Bag',
          ),
          GButton(
            icon: CupertinoIcons.person,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
