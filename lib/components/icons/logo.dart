import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.lock,
      size: 150,
      color: Colors.black,
    );
  }
}