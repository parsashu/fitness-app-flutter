import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_bar.dart';
import 'package:improwave/components/containers/workout_containers/workout_category.dart';
import 'package:improwave/pages/workout_pages/category_page.dart';

class WorkoutCategoryList extends StatelessWidget {
  WorkoutCategoryList({super.key});

  final Map<String, String> categoryData = {
    'سینه': 'assets/images/categories/chest2.png',
    'پشت': 'assets/images/categories/back2.png',
    'جلو بازو': 'assets/images/categories/biceps2.png',
    'پشت بازو': 'assets/images/categories/triceps2.png',
    'سرشانه': 'assets/images/categories/shoulders2.png',
    'بالای پا': 'assets/images/categories/upper_legs2.png',
    'پایین پا': 'assets/images/categories/lower_legs2.png',
    'کر': 'assets/images/categories/core2.png',
    'ساعد': 'assets/images/categories/forearms2.png',
    'هوازی': 'assets/images/categories/cardio2.png',
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
                    spacing: 15,
                    runSpacing: 25,
                    children: categoryData.entries.map((entry) {
                      return WorkoutCategory(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CategoryPage(),
                          ),
                        ),
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
