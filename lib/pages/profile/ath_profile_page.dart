import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/my_switch.dart';
import 'package:improwave/components/containers/about_section.dart';
import 'package:improwave/components/containers/editable_avatar.dart';
import 'package:improwave/components/containers/setting_container.dart';
import 'package:improwave/components/containers/setting_section.dart';
import 'package:improwave/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class AthProfilePage extends StatefulWidget {
  const AthProfilePage({super.key});

  @override
  State<AthProfilePage> createState() => _TraProfilePageState();
}

class _TraProfilePageState extends State<AthProfilePage> {
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
                backgroundImage: const AssetImage(
                    'assets/images/example_athlete_profile.png'),
                editIconData: Icons.edit,
                onPressed: () {
                  Navigator.pushNamed(context, '/editProfile');
                },
              ),
              const SizedBox(height: 20),

              // Username
              Text(
                'Ehsan Jokar',
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: 5),

              // Phone number
              Text(
                '09919578599',
                style: Theme.of(context).textTheme.labelLarge,
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
                  text: 'تمرین بدنسازی به مدت سه سال',
                ),

                const SizedBox(height: 40),

                // S E T T I N G S

                // Trainer related
                SettingContainer(
                  sections: [
                    // My trainers
                    SettingSection(
                      icon: const Icon(CupertinoIcons.person_2_fill),
                      text: Text(
                        'مربی های من',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      action: const Icon(Icons.arrow_back_ios),
                      onTap: () => Navigator.pushNamed(context, '/friends'),
                    ),

                    // Trainers sign up
                    SettingSection(
                      icon: const Icon(CupertinoIcons.square_pencil_fill),
                      text: Text(
                        'ثبت نام مربیان',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      action: const Icon(Icons.arrow_back_ios),
                      onTap: () => Navigator.pushNamed(context, '/pay'),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Appearance
                SettingContainer(
                  sections: [
                    // Edit profile
                    SettingSection(
                      icon: const Icon(Icons.edit),
                      text: Text(
                        'ویرایش پروفایل',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      action: const Icon(Icons.arrow_back_ios),
                      onTap: () {
                        Navigator.pushNamed(context, '/editProfile');
                      },
                    ),

                    // Dark mode
                    SettingSection(
                      icon: const Icon(Icons.dark_mode),
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
                ),

                const SizedBox(height: 20),

                // Logout
                SettingContainer(
                  sections: [
                    SettingSection(
                      icon: Icon(
                        CupertinoIcons.xmark,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      text: Text(
                        'خروج',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                      action: Icon(
                        Icons.arrow_back_ios,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      onTap: () =>
                          Navigator.pushReplacementNamed(context, '/login'),
                    ),
                  ],
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
