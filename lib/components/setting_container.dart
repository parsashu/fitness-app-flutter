import 'package:flutter/material.dart';

class SettingContainer extends StatelessWidget {
  const SettingContainer({super.key, required this.sections});

  final List<Widget> sections;

  @override
  Widget build(BuildContext context) {
    return // Appearance
        Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.outline,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: sections,
      ),
    );
  }
}
