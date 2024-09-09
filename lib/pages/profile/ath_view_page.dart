import 'package:flutter/material.dart';
import 'package:improwave/components/bars/back_app_bar.dart';
import 'package:improwave/components/buttons/friend_button.dart';
import 'package:improwave/components/buttons/unfriend_button.dart';
import 'package:improwave/components/containers/about_section.dart';
import 'package:improwave/utils/is_trainer_provider.dart';
import 'package:provider/provider.dart';

/* MERGABLE */

class AthViewPage extends StatefulWidget {
  const AthViewPage({super.key});

  @override
  State<AthViewPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<AthViewPage> {
  bool isNotRequested = true;
  bool isPending = false;
  bool isFriend = true;

  // Method to send friend request
  void friendRequest() {
    if (isFriend) {
      // Unfriend
      setState(() {
        isFriend = false;
        isNotRequested = true;
      });
    } else if (isPending) {
      // Cancel the pending request
      setState(() {
        isPending = false;
        isNotRequested = true;
      });
    } else {
      // Start a new friend request
      setState(() {
        isNotRequested = false;
        isPending = true;
      });
      // Accept example: delay for 2 seconds
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted && isPending) {
          setState(() {
            isPending = false;
            isFriend = true;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isTrainer = Provider.of<IsTrainerProvider>(context).isTrainer;
    final bool showPersonal = isTrainer && isFriend;

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
                // Button
                if (!isFriend)
                  FriendButton(
                    isNotRequested: isNotRequested,
                    onTap: friendRequest,
                  )
                else
                  UnfriendButton(onTap: friendRequest),

                const SizedBox(height: 40),

                // About
                AboutSection(
                  text: 'تمرین بدنسازی به مدت سه سال',
                  showPersonal: showPersonal,
                  age: '20',
                  weight: '78',
                  height: '183',
                  bmi: '23.3',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
