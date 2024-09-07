import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_bar.dart';
import 'package:improwave/components/containers/users_list.dart';
import 'package:improwave/utils/example_trainers.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
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
