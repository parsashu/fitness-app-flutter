import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:improwave/components/containers/settings/setting_section.dart';
import 'package:improwave/components/pickers/my_weight_picker.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  int _selectedWeight = 80;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Weight
        SettingSection(
          top: true,
          icon: Icon(
            IconsaxPlusLinear.weight,
            color: Theme.of(context).colorScheme.secondary,
          ),
          text: Text(
            'وزن',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          value: '$_selectedWeight kg',
          onTap: () => WeightPickerModal.show(
            context,
            _selectedWeight,
            (newWeight) {
              setState(() {
                _selectedWeight = newWeight;
              });
            },
          ),
        ),

        // Height
        SettingSection(
          icon: Icon(
            FluentIcons.ruler_16_regular,
            color: Theme.of(context).colorScheme.secondary,
          ),
          text: Text(
            'قد',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          value: '183 cm',
          onTap: () => (),
        ),

        // Age
        SettingSection(
          icon: Icon(
            FluentIcons.calendar_12_regular,
            color: Theme.of(context).colorScheme.secondary,
          ),
          text: Text(
            'سن',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          value: '20',
          onTap: () => (),
        ),

        // BMI
        SettingSection(
          buttom: true,
          icon: Icon(
            Icons.accessibility_new,
            color: Theme.of(context).colorScheme.secondary,
          ),
          text: Text(
            'BMI',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          value: '23.3',
          onTap: () => (),
        ),
      ],
    );
  }
}
