import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_bar.dart';
import 'package:improwave/components/containers/workout_containers/workout_program.dart';
import 'package:improwave/components/containers/workout_containers/workout_section.dart';
import 'package:improwave/components/my_scaffold.dart';
import 'package:improwave/pages/workout_pages/all_programs_page.dart';

// TODO: debug Map

class MyProgramsPage extends StatefulWidget {
  const MyProgramsPage({super.key});

  @override
  State<MyProgramsPage> createState() => _MyProgramsPageState();
}

class _MyProgramsPageState extends State<MyProgramsPage> {
  final ScrollController _scrollController = ScrollController();

  // User's data
  final String username = 'Farbod Hajian';
  final AssetImage avatar =
      const AssetImage('assets/images/example_profile.png');

  // Program's data
  // example = {'program name' : ['section 1 title', 'section 1 image path'], ['section 2 title', 'section 2 image path']}
  Map top3Programs = {
    'برنامه حجم': [
      ['سینه', 'assets/images/workout/chest_workout2.png'],
      ['سرشانه و زیربغل', 'assets/images/workout/back_workout.png'],
      ['جلوبازو پشت بازو', 'assets/images/workout/bicep_workout.png'],
      ['پا', 'assets/images/workout/leg_workout.png'],
      ['شکم', 'assets/images/workout/abs_workout2.png'],
    ],
    'تمرکزی پا': [
      ['جلو پا', 'assets/images/workout/leg_workout3.png'],
      ['پشت پا', 'assets/images/workout/leg_workout.png'],
    ],
    'افزایش قدرت': [
      ['سرشانه و زیربغل', 'assets/images/workout/back_workout.png'],
      ['جلوبازو پشت بازو', 'assets/images/workout/bicep_workout.png'],
      ['شکم', 'assets/images/workout/abs_workout2.png'],
    ],
  };

  // The program which got clicked in all programs page
  final Map clickedProgram = {
    'دوره کات': [
      ['سرشانه و زیربغل', 'assets/images/workout/back_workout3.png'],
      ['جلوبازو پشت بازو', 'assets/images/workout/bicep_workout.png'],
      ['پا', 'assets/images/workout/leg_workout.png'],
      ['شکم', 'assets/images/workout/abs_workout2.png'],
    ]
  };

  // Method to push selected program from all programs to the top
  void changeFirstProgram() {
    setState(() {
      // Remove the last program
      top3Programs.remove(top3Programs.keys.last);
      // Add clicked program
      top3Programs = {
        ...clickedProgram,
        ...top3Programs,
      };
    });
  }

  // Method to scroll to the top when a program view got selected
  void _scrollToTop() {
    changeFirstProgram();
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: MySearchBar(),
            ),
            const SizedBox(height: 15),

            // 3 latest programs
            for (var program in top3Programs.entries) ...[
              WorkoutProgram(
                editable: true,
                programName: program.key,
                trainerName: username,
                trainerAvatar: avatar,
                sections: [
                  for (var section in program.value)
                    WorkoutSection(
                      onPressed: () {},
                      title: section[0],
                      image: AssetImage(section[1]),
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

            const SizedBox(height: 35),

            // All programs
            if (top3Programs.length >= 3)
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllProgramsPage(
                      onProgramSelected: _scrollToTop,
                    ),
                  ),
                ),
                child: Text(
                  'همه برنامه ها',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiary,
                      fontWeight: FontWeight.bold),
                ),
              ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
