import 'package:flutter/material.dart';
import 'package:improwave/components/bars/divider_app_bar.dart';
import 'package:improwave/components/containers/workout_containers/workout_view.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceBright,
      appBar: const DividerAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              WorkoutView(
                title: 'پرس سینه',
                imagePath: 'assets/images/workout/chest_workout3.png',
                sets: '4 x 12',
                onPressed: () {},
              ),
              WorkoutView(
                title: 'پرس سینه',
                imagePath: 'assets/images/workout/chest_workout3.png',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
