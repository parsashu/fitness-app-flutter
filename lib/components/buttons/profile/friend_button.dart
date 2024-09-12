import 'package:flutter/material.dart';

class FriendButton extends StatelessWidget {
  const FriendButton({
    super.key,
    required this.onTap,
    this.isNotRequested = true,
  });

  final void Function()? onTap;
  final bool isNotRequested;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 420,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isNotRequested
              ? Colors.blue
              : Theme.of(context).colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: isNotRequested
              ? const Text(
                  'اضافه کردن',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              : const Text('فرستاده شد'),
        ),
      ),
    );
  }
}
