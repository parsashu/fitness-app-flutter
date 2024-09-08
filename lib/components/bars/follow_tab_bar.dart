import 'package:flutter/material.dart';

class FollowTabBar extends StatelessWidget {
  const FollowTabBar({
    super.key,
    required this.followers,
    required this.following,
  });

  final int followers;
  final int following;

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Text(
                    '$followers',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Followers',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
      
          // Following
          Tab(
            child: Column(
              children: [
                Expanded(
                  child: Text(
                    '$following',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Following',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
