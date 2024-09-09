import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final bool green;

  const MyButton(
      {super.key, required this.onTap, required this.text, this.green = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: green ? const Color.fromARGB(255, 51, 176, 99) : Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(text, style: Theme.of(context).textTheme.displayLarge),
        ),
      ),
    );
  }
}
