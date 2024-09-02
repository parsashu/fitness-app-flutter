import 'package:flutter/material.dart';

class MyVerticalDivider extends StatelessWidget {
  const MyVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: VerticalDivider(
        color: Theme.of(context).colorScheme.tertiary,
        thickness: 1.5,
        width: 20,
      ),
    );
  }
}
