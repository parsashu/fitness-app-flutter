import 'dart:ui';

import 'package:flutter/material.dart';

class MyFrostedGlass extends StatelessWidget {
  const MyFrostedGlass({
    super.key,
    this.width = double.infinity,
    this.height = 50,
    required this.child,
  });

  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: width,
        height: height,
        color: Colors.transparent,
        child: Stack(
          // Blur effect
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4,
              ),
              child: Container(),
            ),

            // Gradiant effect
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white.withOpacity(0.13),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.15),
                    Colors.white.withOpacity(0.05),
                  ],
                ),
              ),
            ),
            // Child
            Center(
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
