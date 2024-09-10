import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:improwave/components/buttons/my_switch.dart';
import 'package:improwave/components/containers/about_section.dart';
import 'package:improwave/components/containers/editable_avatar.dart';
import 'package:improwave/components/buttons/setting_section.dart';
import 'package:improwave/components/pickers/my_weight_picker.dart';
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

  int _selectedWeight = 80;

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

              const SizedBox(height: 50),
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

                const SizedBox(height: 30),

                // P E R S O N A L

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
                    }
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

                const SizedBox(height: 15),

                // S E T T I N G S

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

                // Edit profile
                SettingSection(
                  icon: Icon(
                    Icons.folder,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  text: Text(
                    'ویرایش اطلاعات فردی',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/editPersonal');
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
