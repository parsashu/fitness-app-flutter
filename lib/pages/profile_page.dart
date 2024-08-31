import 'package:flutter/material.dart';
import 'package:improwave/components/my_switch.dart';
import 'package:improwave/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // State variable to store the current theme mode
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    // Initialize _isDarkMode based on the current theme
    final themeProvider = Provider.of<ThemeProvider>(context, listen: false);
    _isDarkMode = themeProvider.isDarkMode;
  }

  void toggleDarkMode(bool newValue) {
    setState(() {
      _isDarkMode = newValue;
      Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(height: 200),
                const Text('حالت شب'),
                MySwitch(
                  value: _isDarkMode,
                  onChanged: toggleDarkMode,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
