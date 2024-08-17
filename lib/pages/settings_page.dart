import 'package:flutter/material.dart';
import 'package:improwave/components/my_switch.dart';
import 'package:improwave/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // State variable to store the current theme mode
  bool _isDarkMode = false;
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
        Row(
          children: [
            Text('Dark mode'),
            MySwitch(
              value: _isDarkMode,
              onChanged: toggleDarkMode,
            )
          ],
        ),
      ],
    );
  }
}
