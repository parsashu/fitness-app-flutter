import 'package:flutter/material.dart';

class EditIcon extends StatelessWidget {
  const EditIcon({
    super.key,
    required this.iconData,
    required this.onPressed,
  });

  final IconData iconData;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        padding: const EdgeInsets.all(5),
        child: ClipOval(
          child: Container(
            width: 45,
            height: 45,
            color: Colors.blue,
            child: IconButton(
              splashColor: Colors.blue,
              highlightColor: Colors.blue,
              onPressed: onPressed,
              icon: Icon(
                iconData,
                color: Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
