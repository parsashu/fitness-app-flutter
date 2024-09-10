import 'package:flutter/material.dart';
import 'package:improwave/components/containers/about_section.dart';
import 'package:improwave/components/containers/editable_avatar.dart';
import 'package:improwave/components/containers/settings/apperance_settings.dart';
import 'package:improwave/components/containers/settings/logout.dart';
import 'package:improwave/components/containers/settings/personal_info.dart';
import 'package:improwave/components/containers/settings/trainer_related.dart';

class AthProfilePage extends StatelessWidget {
  const AthProfilePage({super.key});

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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                // About
                AboutSection(
                  text: 'تمرین بدنسازی به مدت سه سال',
                ),
                SizedBox(height: 30),

                // Personal info
                PersonalInfo(),
                SizedBox(height: 15),

                // Trainer related settings
                TrainerRelated(),
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
