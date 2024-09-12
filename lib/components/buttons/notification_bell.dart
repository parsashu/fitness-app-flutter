import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () => Navigator.pushNamed(context, '/notification'),
      icon: const Icon(
        IconsaxPlusBold.notification,
        size: 35,
      ),
    );
  }
}