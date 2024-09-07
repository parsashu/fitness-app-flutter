import 'package:flutter/material.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({
    super.key,
    required this.onTap,
    this.isFollow = true,
  });

  final void Function()? onTap;
  final bool isFollow;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 420,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isFollow
              ? Colors.blue
              : Theme.of(context).colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(40),
        ),
        child: isFollow
            ? const Center(
                child: Text(
                  'Follow',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            : const Center(
                child: Text('Unfollow'),
              ),
      ),
    );
  }
}
