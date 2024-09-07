import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/my_back_button.dart';

class BackAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BackAppBar({super.key, this.bright = true});

  final bool bright;

  @override
  Size get preferredSize => const Size.fromHeight(36);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bright
          ? Theme.of(context).colorScheme.surfaceBright
          : Theme.of(context).colorScheme.surface,
      leading: MyBackButton(
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
