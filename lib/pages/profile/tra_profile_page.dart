import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/counter_button.dart';
import 'package:improwave/components/containers/about_section.dart';
import 'package:improwave/components/containers/editable_avatar.dart';
import 'package:improwave/components/containers/settings/apperance_settings.dart';
import 'package:improwave/components/containers/settings/logout.dart';
import 'package:improwave/components/containers/settings/student_related.dart';
import 'package:improwave/components/dividers/my_vertical_divider.dart';


class TraProfilePage extends StatelessWidget {
  const TraProfilePage({super.key});

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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                // About
                AboutSection(
                  text: 'دارای قهرمانی کشوری و مدرک بین المللی مربی گری.',
                ),
                SizedBox(height: 30),

                // My studens
                StudentRelated(),
                SizedBox(height: 15),

                // Appearance
                AppearanceSettings(),
                SizedBox(height: 15),

                // Logout
                Logout(),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
