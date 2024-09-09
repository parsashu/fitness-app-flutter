import 'package:flutter/material.dart';

class UnfriendButton extends StatelessWidget {
  const UnfriendButton({
    super.key,
    required this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 420,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(40),
        ),
        child: const Center(
          child: Text('حذف'),
        ),
      ),
    );
  }
}
