import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({
    super.key,
    required this.number,
    required this.title,
    required this.onPressed,
  });

  final double number;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),

      child: Column(
        children: [
          // Number
          Text(
            _formatNumber(number),
            style: Theme.of(context).textTheme.headlineLarge
          ),
          // Title
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge
            
          ),
        ],
      ),
    );
  }

  String _formatNumber(double number) {
    // Check if the number is an integer
    if (number == number.toInt()) {
      return number.toInt().toString();
    } else {
      return number.toString();
    }
  }
}
