import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_bar.dart';
import 'package:improwave/components/containers/workout_containers/workout_category.dart';

class WorkoutCategoryList extends StatelessWidget {
  WorkoutCategoryList({super.key});

  final Map<String, String> categoryData = {
    'سینه': 'assets/images/categories/chest.png',
    'پشت': 'assets/images/categories/back.png',
    'جلو بازو': 'assets/images/categories/biceps.png',
    'پشت بازو': 'assets/images/categories/triceps.png',
    'سرشانه': 'assets/images/categories/shoulders.png',
    'بالای پا': 'assets/images/categories/upper_legs.png',
    'پایین پا': 'assets/images/categories/lower_legs.png',
    'کر': 'assets/images/categories/core.png',
    'ساعد': 'assets/images/categories/forearms.png',
    'هوازی': 'assets/images/categories/cardio.png',
  };

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

                  // Categories
                  Wrap(
                    alignment: WrapAlignment.end,
                    spacing: 20,
                    runSpacing: 25,
                    children: categoryData.entries.map((entry) {
                      return WorkoutCategory(
                        onPressed: () {},
                        title: entry.key,
                        image: AssetImage(entry.value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
