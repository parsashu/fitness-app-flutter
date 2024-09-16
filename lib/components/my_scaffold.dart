import 'package:flutter/material.dart';
import 'package:improwave/components/bars/divider_app_bar.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceBright,
      appBar: const DividerAppBar(),
      body: body,
    );
  }
}
