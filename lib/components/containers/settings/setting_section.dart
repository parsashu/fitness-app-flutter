import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingSection extends StatelessWidget {
  const SettingSection({
    super.key,
    required this.icon,
    required this.text,
    this.action,
    required this.onTap,
    this.top = false,
    this.buttom = false,
    this.value = '',
  });

  final Icon icon;
  final Text text;
  final Widget? action;
  final void Function() onTap;
  final bool top;
  final bool buttom;
  final String value;

  //Method to determine boarder radius
  BorderRadius _getBorderRadius() {
    if (top && buttom) {
      return BorderRadius.circular(15);
    } else if (top) {
      return const BorderRadius.vertical(
        top: Radius.circular(15),
      );
    } else if (buttom) {
      return const BorderRadius.vertical(
        bottom: Radius.circular(15),
      );
    } else {
      return BorderRadius.zero;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: Theme.of(context).colorScheme.outline,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
      borderRadius: _getBorderRadius(),
      onPressed: onTap,
      child: SizedBox(
        width: double.infinity,
        height: 40,
        child: Row(
          children: [
            // Action
            action ??
                Icon(
                  size: 20,
                  Icons.arrow_back_ios,
                  color: Theme.of(context).colorScheme.tertiary,
                ),

            // Value
            Text(
              value,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onTertiaryFixedVariant,
                fontSize: 18,
              ),
            ),

            // Text
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: text,
              ),
            ),

            const SizedBox(width: 10),

            // Icon
            icon,
          ],
        ),
      ),
    );
  }
}
