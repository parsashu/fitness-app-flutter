import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChange;

  const NavBar({
    super.key,
    required this.selectedIndex,
    required this.onTabChange,
  });

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(
          height: 1,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: GNav(
            color: Colors.grey.shade600,
            activeColor: Colors.black,
            gap: 12,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 27),
            tabBorderRadius: 40,
            tabActiveBorder: Border.all(
              color: Colors.grey.shade700, // Border color
              width: 1.5, // Border width
            ),
            iconSize: 25,
            textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            onTabChange: (index) {
              widget.onTabChange(
                  index); // Call the callback function when tab changes
            },
            selectedIndex:
                widget.selectedIndex, // Pass the selectedIndex to GNav
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                text: 'خانه',
              ),
              GButton(
                icon: Icons.search,
                text: 'جستجو',
              ),
              GButton(
                icon: Icons.person_outlined,
                text: 'پروفایل',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
