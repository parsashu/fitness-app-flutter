import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/containers/avatar.dart';
import 'package:improwave/components/buttons/counter_button.dart';
import 'package:improwave/components/icons/edit_icon.dart';
import 'package:improwave/components/buttons/my_switch.dart';
import 'package:improwave/components/dividers/my_vertical_divider.dart';
import 'package:improwave/components/containers/setting_container.dart';
import 'package:improwave/components/containers/setting_section.dart';
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
      body: ListView(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile picture
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90),
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Theme.of(context).colorScheme.outlineVariant,
                            width: 1.0,
                          ),
                        ),
                        child: const Avatar(
                          imagePath: 'assets/images/example_profile.png',
                        ),
                      ),
                      const Positioned(
                        bottom: 0,
                        right: 6,
                        child: EditIcon(),
                      ),
                    ],
                  ),
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
                  style: Theme.of(context).textTheme.labelMedium,
                ),

                const SizedBox(height: 30),

                // Counters
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CounterButton(
                      number: 4.8,
                      title: 'Ranking',
                      onPressed: () {},
                    ),
                    const MyVerticalDivider(),
                    CounterButton(
                      number: 35,
                      title: 'Followers',
                      onPressed: () {},
                    ),
                    const MyVerticalDivider(),
                    CounterButton(
                      number: 35,
                      title: 'Following',
                      onPressed: () {},
                    ),
                  ],
                ),

                const SizedBox(height: 80),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                // A B O U T
                Container(
                  padding:
                      const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.outline,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Title
                      Text(
                        'درباره',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),

                      const SizedBox(height: 5),

                      // Bio
                      Text(
                        textDirection: TextDirection.rtl,
                        'دارای قهرمانی کشوری و مدرک بین المللی مربی گری.',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                // S E T T I N G S
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
                      onTap: () => toggleDarkMode(!_isDarkMode),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Appearance
                SettingContainer(
                  sections: [
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
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
