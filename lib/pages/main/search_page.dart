import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_bar.dart';
import 'package:improwave/components/containers/search_profile.dart';
import 'package:improwave/components/containers/users_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(68),
        child: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surfaceBright,
          surfaceTintColor: Theme.of(context).colorScheme.surfaceBright,
          shadowColor: Theme.of(context).colorScheme.shadow,
          scrolledUnderElevation: 0.8,
          title: const SizedBox(
            height: 68,
            child: MySearchBar(),
          ),
        ),
      ),
      body: UsersList(users: exampleTrainers),
    );
  }
}
