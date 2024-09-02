import 'package:flutter/material.dart';

class EditHintText extends StatelessWidget {
  const EditHintText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
      alignment: Alignment.centerRight,
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
