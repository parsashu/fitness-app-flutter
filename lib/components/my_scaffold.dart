import 'package:flutter/material.dart';
import 'package:improwave/components/bars/divider_app_bar.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    super.key,
    required this.body,
    this.appBar = true,
  });

  final Widget body;
  final bool appBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceBright,
      appBar: appBar ? const DividerAppBar() : null,
      body: body,
    );
  }
}
