import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/my_back_button.dart';

class DividerAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DividerAppBar({super.key, this.bright = true, this.title = ''});

  final bool bright;
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(child: Text(title)),
      backgroundColor: bright
          ? Theme.of(context).colorScheme.surfaceBright
          : Theme.of(context).colorScheme.surface,
      surfaceTintColor: bright
          ? Theme.of(context).colorScheme.surfaceBright
          : Theme.of(context).colorScheme.surface,
      shadowColor: Theme.of(context).colorScheme.shadow,
      scrolledUnderElevation: 1,
      leading: MyBackButton(
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
