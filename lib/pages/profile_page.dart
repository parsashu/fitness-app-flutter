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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),

            // Night mode
            Row(
              children: [
                const Text('حالت شب'),
                MySwitch(
                  value: _isDarkMode,
                  onChanged: toggleDarkMode,
                )
              ],
            ),

            const SizedBox(height: 20),

            // Logout
            Row(
              children: [
                const Icon(Icons.login_rounded),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  child: const Text('خروج'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
