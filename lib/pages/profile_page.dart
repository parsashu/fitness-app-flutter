import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/avatar.dart';
import 'package:improwave/components/counter_button.dart';
import 'package:improwave/components/edit_icon.dart';
import 'package:improwave/components/my_vertical_divider.dart';
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
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => toggleDarkMode(!_isDarkMode),
            icon: Icon(
              _isDarkMode
                  ? CupertinoIcons.sun_min_fill
                  : CupertinoIcons.moon_stars,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
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

              const SizedBox(height: 40),

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

              // About
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'درباره',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    textDirection: TextDirection.rtl,
                    'دارای قهرمانی کشوری و مدرک بین المللی مربی گری. لیسانس بیومکانیک و دارای 8 سال تجربه در لاغری با فوکوس روی برنامه غذایی و نتیجه گیری با راه هموار.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              const SizedBox(height: 200),

              // Logout
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  child: Text(
                    'خروج',
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.error),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
