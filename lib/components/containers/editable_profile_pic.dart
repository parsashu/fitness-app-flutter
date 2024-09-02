import 'package:flutter/material.dart';
import 'package:improwave/components/containers/avatar.dart';
import 'package:improwave/components/icons/edit_icon.dart';

class EditableProfilePic extends StatelessWidget {
  const EditableProfilePic({super.key, required this.editIconData});

  final IconData editIconData;

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
            child: const Avatar(
              imagePath: 'assets/images/example_profile.png',
            ),
          ),
          Positioned(
            bottom: 0,
            right: 6,
            child: EditIcon(
              iconData: editIconData,
            ),
          ),
        ],
      ),
    );
  }
}
