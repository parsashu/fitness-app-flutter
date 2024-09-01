import 'package:flutter/material.dart';

class EditIcon extends StatelessWidget {
  const EditIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        padding: const EdgeInsets.all(5),
        child: ClipOval(
          child: Container(
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(11),
              child: Icon(
                Icons.edit,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
