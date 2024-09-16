import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_bar.dart';
import 'package:improwave/components/containers/workout_containers/workout_view.dart';
import 'package:improwave/components/my_scaffold.dart';

class AllProgramsPage extends StatelessWidget {
  const AllProgramsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List programNames = [
      'دوره کات یک ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات دو ماهه',
      'دوره کات سه ماهه',
    ];

    final List programImages = [
      'assets/images/workout/back_workout9.png',
      'assets/images/workout/back_workout2.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
      'assets/images/workout/back_workout3.png',
    ];

    return MyScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: programNames.length + 1,
          itemBuilder: (context, index) {
            // Search bar
            if (index == 0) {
              return const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 25),
                child: MySearchBar(padding: false),
              );
            }

            // Programs
            return WorkoutView(
              title: programNames[index - 1],
              imagePath: programImages[index - 1],
              onPressed: () => Navigator.pop(context),
            );
          },
        ),
      ),
    );
  }
}
