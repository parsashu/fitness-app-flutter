import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollTotopButton extends StatelessWidget {
  const ScrollTotopButton({super.key, required this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      focusElevation: 0,
      highlightElevation: 0,
      shape: const CircleBorder(side: BorderSide(width: 0.2)),
      backgroundColor: Theme.of(context).colorScheme.surface,
      clipBehavior: Clip.hardEdge,
      onPressed: onPressed,
      child: Icon(
        CupertinoIcons.chevron_up,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
