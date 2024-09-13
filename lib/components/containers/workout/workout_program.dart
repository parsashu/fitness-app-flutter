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
        const SizedBox(
          height: 90,
          child: ProfileView(
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
            padEnds: false,
            controller: PageController(viewportFraction: 0.9),
            children: [
              WorkoutSection(
                onPressed: () {},
                title: 'تمرین سینه',
              ),
              WorkoutSection(
                onPressed: () {},
                title: 'تمرین زیربغل',
              ),
              WorkoutSection(
                onPressed: () {},
                title: 'تمرین سینه',
              ),
              WorkoutSection(
                onPressed: () {},
                title: 'تمرین سینه',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
