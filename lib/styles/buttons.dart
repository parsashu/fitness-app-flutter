import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class StyledGButton extends StatelessWidget {
  const StyledGButton({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GButton(
      icon: icon,
      text: text,
      iconSize: 20, // Adjust icon size
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 12, // Adjust text size
        fontWeight: FontWeight.w400,
      ),
    );
  }
}