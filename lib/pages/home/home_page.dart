import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/notification_bell.dart';
import 'package:improwave/components/containers/workout_containers/workout_program.dart';
import 'package:improwave/components/containers/workout_containers/workout_section.dart';
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
      body: const Column(
        children: [
          SizedBox(height: 20),

          // Current program
          WorkoutProgram(
            programName: 'برنامه حجم',
            trainerName: 'Farbod Hajian',
            trainerAvatar: AssetImage('assets/images/example_profile.png'),
            sections: [
              WorkoutSection(
                title: 'سینه',
                image: AssetImage('assets/images/workout/chest_workout.png'),
              ),
              WorkoutSection(
                title: 'سرشانه و زیربغل',
                image: AssetImage('assets/images/workout/back_workout.png'),
              ),
              WorkoutSection(
                title: 'جلوبازو پشت بازو',
                image: AssetImage('assets/images/workout/bicep_workout.png'),
              ),
              WorkoutSection(
                title: 'پا',
                image: AssetImage('assets/images/workout/leg_workout.png'),
              ),
              WorkoutSection(
                title: 'شکم',
                image: AssetImage('assets/images/workout/abs_workout2.png'),
              ),
            ],
          ),

          SizedBox(height: 80),
        ],
      ),
    );
  }
}
