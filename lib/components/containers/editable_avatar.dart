import 'package:flutter/material.dart';
import 'package:improwave/components/icons/edit_icon.dart';

class EditableAvatar extends StatelessWidget {
  const EditableAvatar({
    super.key,
    required this.backgroundImage,
    required this.editIconData,
    required this.onPressed,
  });

  final ImageProvider<Object>? backgroundImage;
  final IconData editIconData;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 140),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Theme.of(context).colorScheme.outlineVariant,
                width: 1.0,
              ),
            ),
            child: CircleAvatar(
              radius: 76,
              backgroundImage: backgroundImage,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 5,
            child: EditIcon(
              onPressed: onPressed,
              iconData: editIconData,
            ),
          ),
        ],
      ),
    );
  }
}
