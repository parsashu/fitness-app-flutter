import 'package:flutter/material.dart';

class SearchTabBar extends StatelessWidget {
  const SearchTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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

        // Trainer
        Tab(
          child: Text(
            'مربی',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),

        // Athlete
        Tab(
          child: Text(
            'ورزشکار',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}
