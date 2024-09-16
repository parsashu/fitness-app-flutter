import 'package:flutter/material.dart';

class MyHorizontalDivider extends StatelessWidget {
  const MyHorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 260,
      child: Divider(
        thickness: 0.6,
      ),
    );
  }
}
