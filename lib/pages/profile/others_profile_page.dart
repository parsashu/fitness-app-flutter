import 'package:flutter/material.dart';
import 'package:improwave/components/bars/back_app_bar.dart';
import 'package:improwave/components/buttons/counter_button.dart';
import 'package:improwave/components/dividers/my_vertical_divider.dart';

class OthersProfilePage extends StatefulWidget {
  const OthersProfilePage({super.key});

  @override
  State<OthersProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<OthersProfilePage> {
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
                    title: 'Ranking',
                    onPressed: () => Navigator.pushNamed(context, '/followers'),
                  ),
                  const MyVerticalDivider(),
                  CounterButton(
                    number: 35,
                    title: 'Followers',
                    onPressed: () => Navigator.pushNamed(context, '/followers'),
                  ),
                  const MyVerticalDivider(),
                  CounterButton(
                    number: 48,
                    title: 'Following',
                    onPressed: () => Navigator.pushNamed(context, '/followers'),
                  ),
                ],
              ),

              const SizedBox(height: 80),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                // A B O U T
                Container(
                  padding: const EdgeInsets.all(15),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
