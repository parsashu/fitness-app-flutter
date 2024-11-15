import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChange;

  const NavBar({
    super.key,
    required this.selectedIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: GNav(
        backgroundColor: Colors.black,
        tabBackgroundColor: Colors.grey.shade800,
        color: Colors.white,
        activeColor: Colors.white,
        gap: 12,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 27),
        tabBorderRadius: 40,
        iconSize: 25,
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        selectedIndex: selectedIndex,
        onTabChange: onTabChange,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'خانه',
          ),
          GButton(
            icon: Icons.search,
            text: 'جستجو',
          ),
          GButton(
            icon: Icons.person,
            text: 'پروفایل',
          ),
        ],
      ),
    );
  }
}
