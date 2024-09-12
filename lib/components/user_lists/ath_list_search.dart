import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_bar.dart';
import 'package:improwave/components/containers/search_profile.dart';

class AthListSearch extends StatelessWidget {
  const AthListSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  color: Theme.of(context).colorScheme.surfaceBright,
                  child: const MySearchBar(),
                ),
                for (int i = 1; i < 9; i++)
                  SearchProfile(
                    name: 'ورزشکار شماره $i',
                    bio: 'تمرین بدنسازی به مدت سه سال',
                    avatar: const AssetImage(
                      'assets/images/example_athlete_profile.png',
                    ),
                    isThisTrainer: false,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
