import 'package:flutter/cupertino.dart';
import 'package:improwave/components/containers/profile_view.dart';
import 'package:improwave/components/containers/workout/workout_section.dart';

class WorkoutProgram extends StatelessWidget {
  const WorkoutProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Name and trainer
        Container(
          height: 90,
          padding: const EdgeInsets.only(right: 24),
          child: const ProfileView(
            name: 'برنامه حجم', // Program name
            bio: 'Farbod Hajian', // Trainer name
            avatar: AssetImage('assets/images/example_profile.png'),
            isThisTrainer: true,
            bright: false,
          ),
        ),

        // Page view
        SizedBox(
          height: 250,
          child: PageView(
            reverse: true,
            clipBehavior: Clip.none,
            controller: PageController(viewportFraction: 0.9),
            children: [
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
        ),
      ],
    );
  }
}
