import 'package:flutter/material.dart';
import 'package:improwave/components/bars/back_app_bar.dart';
import 'package:improwave/components/buttons/friend_button.dart';
import 'package:improwave/components/containers/about_section.dart';

class AthViewPage extends StatefulWidget {
  const AthViewPage({super.key});

  @override
  State<AthViewPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<AthViewPage> {
  bool isFollow = true;

  void toggleFollowButton() {
    setState(() {
      isFollow = !isFollow;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackAppBar(bright: false),
      body: ListView(
        children: [
          const SizedBox(height: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile picture
              const CircleAvatar(
                radius: 76,
                backgroundImage:
                    AssetImage('assets/images/example_athlete_profile.png'),
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

              const SizedBox(height: 40),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                // F
                FriendButton(
                  isFollow: isFollow,
                  onTap: toggleFollowButton,
                ),

                const SizedBox(height: 40),

                // About
                const AboutSection(
                  text: 'تمرین بدنسازی به مدت سه سال',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
