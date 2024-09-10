import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/counter_button.dart';
import 'package:improwave/components/buttons/my_switch.dart';
import 'package:improwave/components/containers/about_section.dart';
import 'package:improwave/components/containers/editable_avatar.dart';
import 'package:improwave/components/dividers/my_vertical_divider.dart';
import 'package:improwave/components/buttons/setting_section.dart';
import 'package:improwave/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class TraProfilePage extends StatefulWidget {
  const TraProfilePage({super.key});

  @override
  State<TraProfilePage> createState() => _TraProfilePageState();
}

class _TraProfilePageState extends State<TraProfilePage> {
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
      body: ListView(
        children: [
          const SizedBox(height: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile picture
              EditableAvatar(
                backgroundImage:
                    const AssetImage('assets/images/example_profile.png'),
                editIconData: Icons.edit,
                onPressed: () {
                  Navigator.pushNamed(context, '/editProfile');
                },
              ),
              const SizedBox(height: 20),

              // Username
              Text(
                'Farbod Hajian',
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: 5),

              // Phone number
              Text(
                '09919578599',
                style: Theme.of(context).textTheme.labelLarge,
              ),

              const SizedBox(height: 30),

              // Counters
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CounterButton(
                    number: 4.8,
                    title: 'امتیاز',
                    onPressed: () {},
                  ),
                  const MyVerticalDivider(),
                  CounterButton(
                    number: 35,
                    title: 'شاگرد',
                    onPressed: () => Navigator.pushNamed(context, '/friends'),
                  ),
                ],
              ),

              const SizedBox(height: 60),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                // A B O U T
                const AboutSection(
                  text: 'دارای قهرمانی کشوری و مدرک بین المللی مربی گری.',
                ),

                const SizedBox(height: 30),

                // S E T T I N G S

                // My studens
                SettingSection(
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
                ),

                const SizedBox(height: 15),

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

                const SizedBox(height: 15),

                // Logout
                SettingSection(
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
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, '/login'),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
