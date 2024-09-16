import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_bar.dart';
import 'package:improwave/components/containers/workout_containers/workout_category.dart';

class WorkoutCategoryList extends StatelessWidget {
  const WorkoutCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Search bar
                  const MySearchBar(),

                  const SizedBox(height: 20),
                  Wrap(
                    alignment: WrapAlignment.end,
                    runSpacing: 10,
                    children: [
                      WorkoutCategory(
                        onPressed: () {},
                        title: 'سینه',
                        image: const AssetImage(
                            'assets/images/workout/chest_workout2.png'),
                      ),
                      WorkoutCategory(
                        onPressed: () {},
                        title: 'سینه',
                        image: const AssetImage(
                            'assets/images/workout/chest_workout2.png'),
                      ),
                      WorkoutCategory(
                        onPressed: () {},
                        title: 'سینه',
                        image: const AssetImage(
                            'assets/images/workout/chest_workout2.png'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
