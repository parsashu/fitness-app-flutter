import 'package:flutter/material.dart';
import 'package:improwave/components/bars/my_tab_bar.dart';
import 'package:improwave/components/buttons/my_back_button.dart';
import 'package:improwave/components/containers/user_list_search.dart';
import 'package:improwave/utils/example_trainers.dart';

class FollowersPage extends StatelessWidget {
  const FollowersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(35),
          child: AppBar(
            backgroundColor: Theme.of(context).colorScheme.surfaceBright,
            leading: MyBackButton(
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        body: Column(
          children: [
            const MyTabBar(followers: 35, following: 48),
            Expanded(
              child: TabBarView(
                children: [
                  // Followers
                  UsersListSearch(users: exampleTrainers),

                  // Following
                  UsersListSearch(users: exampleTrainers),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
