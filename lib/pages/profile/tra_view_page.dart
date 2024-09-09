import 'package:flutter/material.dart';
import 'package:improwave/components/bars/back_app_bar.dart';
import 'package:improwave/components/buttons/friend_button.dart';
import 'package:improwave/components/buttons/counter_button.dart';
import 'package:improwave/components/buttons/unfriend_button.dart';
import 'package:improwave/components/containers/about_section.dart';
import 'package:improwave/components/dividers/my_vertical_divider.dart';

/* MERGABLE */

class TraViewPage extends StatefulWidget {
  const TraViewPage({super.key});

  @override
  State<TraViewPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<TraViewPage> {
  bool isNotRequested = true;
  bool isPending = false;
  bool isFriend = false;

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
                    AssetImage('assets/images/example_profile.png'),
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
                  CounterButton(number: 35, title: 'شاگرد', onPressed: () {}),
                ],
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
                const AboutSection(
                  text: 'دارای قهرمانی کشوری و مدرک بین المللی مربی گری.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
