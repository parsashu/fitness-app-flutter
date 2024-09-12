import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/containers/settings/setting_section.dart';

class TrainerRelated extends StatelessWidget {
  const TrainerRelated({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // My trainers
        SettingSection(
          top: true,
          icon: Icon(
            CupertinoIcons.person_2_fill,
            color: Theme.of(context).colorScheme.secondary,
          ),
          text: Text(
            'مربی های من',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          onTap: () => Navigator.pushNamed(context, '/friends'),
        ),

        // Trainers sign up
        SettingSection(
          buttom: true,
          icon: Icon(
            Icons.edit_calendar,
            color: Theme.of(context).colorScheme.secondary,
          ),
          text: Text(
            'ثبت نام مربیان',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          onTap: () => Navigator.pushNamed(context, '/pay'),
        ),
      ],
    );
  }
}
