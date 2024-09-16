import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_bar.dart';
import 'package:improwave/components/containers/workout_containers/workout_program.dart';
import 'package:improwave/components/containers/workout_containers/workout_section.dart';
import 'package:improwave/components/my_scaffold.dart';

class MyProgramsPage extends StatelessWidget {
  const MyProgramsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: MySearchBar(),
            ),
            const SizedBox(height: 15),

            // 3 latest programs
            for (int i = 0; i < 3; i++) ...[
              WorkoutProgram(
                editable: true,
                programName: 'برنامه حجم',
                trainerName: 'Farbod Hajian',
                trainerAvatar:
                    const AssetImage('assets/images/example_profile.png'),
                sections: [
                  WorkoutSection(
                    onPressed: () {},
                    title: 'سینه',
                    image: const AssetImage(
                        'assets/images/workout/chest_workout2.png'),
                  ),
                  WorkoutSection(
                    onPressed: () {},
                    title: 'سرشانه و زیربغل',
                    image: const AssetImage(
                        'assets/images/workout/back_workout.png'),
                  ),
                  WorkoutSection(
                    onPressed: () {},
                    title: 'جلوبازو پشت بازو',
                    image: const AssetImage(
                        'assets/images/workout/bicep_workout.png'),
                  ),
                  WorkoutSection(
                    onPressed: () {},
                    title: 'پا',
                    image: const AssetImage(
                        'assets/images/workout/leg_workout.png'),
                  ),
                  WorkoutSection(
                    onPressed: () {},
                    title: 'شکم',
                    image: const AssetImage(
                        'assets/images/workout/abs_workout2.png'),
                  ),
                ],
              ),
              const SizedBox(height: 30),
            ],

            // Add program
            const WorkoutProgram(
              editable: true,
              programName: 'برنامه جدید',
              trainerName: 'Farbod Hajian',
              trainerAvatar: AssetImage('assets/images/example_profile.png'),
            ),

            const SizedBox(height: 40),

            // All workouts
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/all_programs'),
              child: Text(
                'همه برنامه ها',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onTertiary,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
