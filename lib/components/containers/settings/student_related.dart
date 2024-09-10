import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/setting_section.dart';

class StudentRelated extends StatelessWidget {
  const StudentRelated({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingSection(
      top: true,
      buttom: true,
      icon: Icon(
        CupertinoIcons.person_2_fill,
        color: Theme.of(context).colorScheme.secondary,
      ),
      text: Text(
        'شاگردهای من',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      onTap: () => Navigator.pushNamed(context, '/friends'),
    );
  }
}
