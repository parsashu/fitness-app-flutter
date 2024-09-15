import 'package:flutter/cupertino.dart';
import 'package:improwave/components/buttons/add_workout_section.dart';
import 'package:improwave/components/containers/profile_view.dart';

class WorkoutProgram extends StatelessWidget {
  const WorkoutProgram({
    super.key,
    this.editable = false,
    required this.programName,
    required this.trainerName,
    required this.trainerAvatar,
    this.sections = const [],
  });

  final bool editable;
  final String programName;
  final String trainerName;
  final ImageProvider<Object> trainerAvatar;
  final List<Widget> sections;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Name and trainer
        Container(
          height: 90,
          padding: const EdgeInsets.only(right: 24),
          child: ProfileView(
            name: programName,
            bio: trainerName,
            avatar: trainerAvatar,
            isThisTrainer: true,
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
              ...sections,
              // Add workout section
              if (editable) AddWorkoutSection(onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
