import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/profile/my_switch.dart';
import 'package:improwave/components/containers/settings/setting_section.dart';
import 'package:improwave/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class AppearanceSettings extends StatefulWidget {
  const AppearanceSettings({super.key});

  @override
  State<AppearanceSettings> createState() => _AppearanceSettingsState();
}

class _AppearanceSettingsState extends State<AppearanceSettings> {
  // State variable to store the current theme mode
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    // Initialize _isDarkMode based on the current theme
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    _isDarkMode = themeProvider.isDarkMode;
  }

  // Method to change the theme
  void toggleDarkMode(bool newValue) {
    setState(() {
      _isDarkMode = newValue;
      Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Edit profile
        SettingSection(
          top: true,
          icon: Icon(
            Icons.edit,
            color: Theme.of(context).colorScheme.secondary,
          ),
          text: Text(
            'ویرایش پروفایل',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/editProfile');
          },
        ),

        // Dark mode
        SettingSection(
          buttom: true,
          icon: Icon(
            Icons.dark_mode,
            color: Theme.of(context).colorScheme.secondary,
          ),
          text: Text(
            'حالت شب',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          action: MySwitch(
            value: _isDarkMode,
            onChanged: toggleDarkMode,
          ),
          onTap: () => toggleDarkMode(!_isDarkMode),
        ),
      ],
    );
  }
}
