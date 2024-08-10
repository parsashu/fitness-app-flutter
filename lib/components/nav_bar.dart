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
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: GNav(
          backgroundColor: Colors.white,
          color: Colors.black,
          activeColor: Colors.white,
          tabBackgroundGradient: const LinearGradient(colors: [
            Color.fromARGB(255, 90, 176, 222), 
            Color.fromARGB(255, 186, 224, 244)
            ]),
          gap: 12,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 27),
          tabBorderRadius: 20,
          iconSize:  25,
          textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),   
          onTabChange: (index) {
            widget.onTabChange(index); // Call the callback function when tab changes
          },
          selectedIndex: widget.selectedIndex, // Pass the selectedIndex to GNav
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home', 

            ),
            GButton(
              icon: Icons.chat_bubble_outline,
              text: 'Chat',
              
            ),
            GButton(
              icon: Icons.person_outlined,
              text: 'Profile',

            ),
            GButton(
              icon: Icons.settings_outlined,
              text: 'Settings',

            ),
          ],
        ),
      ),
    );
  }
}
