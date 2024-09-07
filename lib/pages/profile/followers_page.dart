import 'package:flutter/material.dart';
import 'package:improwave/components/bars/back_app_bar.dart';
import 'package:improwave/components/bars/my_tab_bar.dart';
import 'package:improwave/components/containers/search_profile.dart';
import 'package:improwave/components/containers/user_list_search.dart';

class FollowersPage extends StatelessWidget {
  const FollowersPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<SearchProfile> exampleTrainers = [
      for (int i = 1; i < 9; i++)
        SearchProfile(
          name: 'مربی شماره $i',
          bio:
              'مربی شماره $i به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
          avatar: const AssetImage('assets/images/example_profile.png'),
          onTap: () => Navigator.pushNamed(context, '/othersProfile'),
        ),
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const BackAppBar(),
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
