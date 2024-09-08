import 'package:flutter/material.dart';

class SearchTabBar extends StatelessWidget {
  const SearchTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surfaceBright,
      child: TabBar(
        labelPadding: const EdgeInsetsDirectional.only(bottom: 8),
        indicatorColor: Colors.blue,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          // Followers
          Tab(
            child: Text(
              'مربی',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),

          // Following
          Tab(
            child: Text(
              'ورزشکار',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
