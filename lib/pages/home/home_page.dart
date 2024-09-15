import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/notification_bell.dart';
import 'package:improwave/components/containers/workout/workout_program.dart';
import 'package:improwave/components/containers/workout/workout_section.dart';
import 'package:improwave/components/icons/notification_label.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceBright,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceBright,
        actions: const [
          Stack(
            children: [
              NotificationBell(),
              NotificationDot(),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          // Current program
          WorkoutProgram(
            programName: 'برنامه حجم',
            trainerName: 'Farbod Hajian',
            trainerAvatar: const AssetImage('assets/images/example_profile.png'),
            sections: [
              WorkoutSection(
                onPressed: () {},
                title: 'سینه',
                image:
                    const AssetImage('assets/images/workout/chest_workout.png'),
              ),
              WorkoutSection(
                onPressed: () {},
                title: 'سرشانه و زیربغل',
                image:
                    const AssetImage('assets/images/workout/back_workout.png'),
              ),
              WorkoutSection(
                onPressed: () {},
                title: 'جلوبازو پشت بازو',
                image:
                    const AssetImage('assets/images/workout/bicep_workout.png'),
              ),
              WorkoutSection(
                onPressed: () {},
                title: 'پا',
                image:
                    const AssetImage('assets/images/workout/leg_workout.png'),
              ),
              WorkoutSection(
                onPressed: () {},
                title: 'شکم',
                image:
                    const AssetImage('assets/images/workout/abs_workout2.png'),
              ),
            ],
          ),

          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
