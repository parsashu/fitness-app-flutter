import 'package:flutter/material.dart';

class SettingSection extends StatelessWidget {
  const SettingSection({
    super.key,
    required this.icon,
    required this.text,
    required this.action,
    required this.onTap,
  });

  final Icon icon;
  final Text text;
  final Widget action;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              // Action
              action,

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
      ),
    );
  }
}
