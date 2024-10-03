import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_tab_bar.dart';
import 'package:improwave/components/lists/profile_view_list.dart';
import 'package:improwave/components/lists/workout_category_list.dart';
import 'package:improwave/utils/is_trainer_provider.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // Trainer's data
  final List traNames = [
    for (int i = 0; i < 10; i++) 'Farbod Hajian',
  ];

  final List traBios = [
    for (int i = 0; i < 10; i++)
      'دارای قهرمانی کشوری و مدرک بین المللی مربی گری',
  ];

  final List traImages = [
    for (int i = 0; i < 10; i++)
      const AssetImage(
        'assets/images/example_profile.png',
      ),
  ];

  // Athlete's data
  final List athNames = [
    for (int i = 0; i < 10; i++) 'Ehsan Jokar',
  ];

  final List athBios = [
    for (int i = 0; i < 10; i++) 'تمرین بدنسازی به مدت سه سال',
  ];

  final List athImages = [
    for (int i = 0; i < 10; i++)
      const AssetImage(
        'assets/images/example_athlete_profile.png',
      ),
  ];

  @override
  Widget build(BuildContext context) {
    // Flag to determine if user is trainer
    bool isTrainer = context.watch<IsTrainerProvider>().isTrainer;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          // Tab bar height
          preferredSize: const Size.fromHeight(15),
          child: AppBar(
            backgroundColor: Theme.of(context).colorScheme.surfaceBright,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surfaceBright,
        body: Column(
          children: [
            const SearchTabBar(),
            Expanded(
              child: TabBarView(
                children: [
                  // Workouts
                  WorkoutCategoryList(),

                  // Athletes or trainers
                  ProfileViewList(
                    names: isTrainer ? athNames : traNames,
                    bios: isTrainer ? athBios : traBios,
                    images: isTrainer ? athImages : traImages,
                    isThisTrainer: !isTrainer,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
