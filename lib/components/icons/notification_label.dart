import 'package:flutter/material.dart';

class NotificationDot extends StatelessWidget {
  const NotificationDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 11,
      top: 11,
      child: Container(
        width: 13,
        height: 13,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 209, 41, 29),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
