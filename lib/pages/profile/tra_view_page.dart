import 'package:flutter/material.dart';
import 'package:improwave/components/bars/back_app_bar.dart';
import 'package:improwave/components/buttons/friend_button.dart';
import 'package:improwave/components/buttons/counter_button.dart';
import 'package:improwave/components/containers/about_section.dart';
import 'package:improwave/components/dividers/my_vertical_divider.dart';

class TraViewPage extends StatefulWidget {
  const TraViewPage({super.key});

  @override
  State<TraViewPage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<TraViewPage> {
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
                // Friend request button
                FriendButton(
                  isFollow: isFollow,
                  onTap: toggleFollowButton,
                ),

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
