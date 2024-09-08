import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_tab_bar.dart';
import 'package:improwave/components/user_lists/ath_list_search.dart';
import 'package:improwave/components/user_lists/tra_list_search.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surfaceBright,
        body: const Column(
          children: [
            SizedBox(height: 60),
            SearchTabBar(),
            Expanded(
              child: TabBarView(
                children: [
                  // Trainers
                  TraListSearch(),

                  // Athletes
                  AthListSearch(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
