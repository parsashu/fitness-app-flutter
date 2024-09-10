import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/setting_section.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingSection(
      top: true,
      buttom: true,
      icon: Icon(
        CupertinoIcons.xmark,
        color: Theme.of(context).colorScheme.error,
      ),
      text: Text(
        'خروج',
        style: TextStyle(
          fontSize: 20,
          color: Theme.of(context).colorScheme.error,
        ),
      ),
      action: Icon(
        Icons.arrow_back_ios,
        size: 20,
        color: Theme.of(context).colorScheme.error,
      ),
      onTap: () => Navigator.pushReplacementNamed(context, '/login'),
    );
  }
}
