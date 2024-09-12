import 'package:flutter/material.dart';

class NotificationDot extends StatelessWidget {
  const NotificationDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 12,
      top: 12,
      child: Container(
        width: 11,
        height: 11,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 209, 41, 29),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}