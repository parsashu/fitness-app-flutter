import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:improwave/components/containers/settings/setting_section.dart';
import 'package:improwave/components/pickers/age_picker.dart';
import 'package:improwave/components/pickers/height_picker.dart';
import 'package:improwave/components/pickers/weight_picker.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  int _selectedWeight = 0;
  int _selectedHeight = 0;
  int _selectedAge = 0;
  double _bmi = 0;

  void calcBmi() {
    setState(() {
      _bmi = 10000 * _selectedWeight / (_selectedHeight * _selectedHeight);
    });
  }

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
          value: _selectedWeight == 0 ? '' : '$_selectedWeight kg',
          onTap: () => WeightPickerModal.show(
            context,
            _selectedWeight,
            (newWeight) {
              setState(() {
                _selectedWeight = newWeight;               
              });
              calcBmi();
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
          value: _selectedHeight == 0 ? '' : '$_selectedHeight cm',
          onTap: () => HeightPickerModal.show(
            context,
            _selectedHeight,
            (newHeight) {
              setState(() {
                _selectedHeight = newHeight;
              });
              calcBmi();
            },
          ),
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
          value: _selectedAge == 0 ? '' : '$_selectedAge',
          onTap: () => AgePickerModal.show(
            context,
            _selectedAge,
            (newAge) {
              setState(() {
                _selectedAge = newAge;
              });
            },
          ),
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
          action: const Icon(
            size: 0,
            Icons.circle,
          ),
          value: _bmi == 0 ? '' : _bmi.toStringAsFixed(2),
          onTap: () => (),
        ),
      ],
    );
  }
}
