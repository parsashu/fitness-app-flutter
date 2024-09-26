import 'package:flutter/material.dart';
import 'package:improwave/utils/is_trainer_provider.dart';
import 'package:provider/provider.dart';

class SearchTabBar extends StatelessWidget {
  const SearchTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Flag to determine if user is trainer
    bool isTrainer = context.watch<IsTrainerProvider>().isTrainer;

    return TabBar(
      labelPadding: const EdgeInsetsDirectional.only(bottom: 8),
      indicatorColor: Colors.blue,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: [
        // Workouts
        Tab(
          child: Text(
            'تمرین ها',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),

        // Athlete or trainer
        Tab(
          child: Text(
            isTrainer ? 'ورزشکار' : 'مربی',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
