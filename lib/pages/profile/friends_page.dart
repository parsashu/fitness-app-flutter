import 'package:flutter/material.dart';
import 'package:improwave/components/bars/divider_app_bar.dart';
import 'package:improwave/components/user_lists/ath_list_search.dart';
import 'package:improwave/components/user_lists/tra_list_search.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const bool isTrainer = true;

    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: DividerAppBar(),
        body: Expanded(
          child: isTrainer ? AthListSearch() : TraListSearch(),
        ),
      ),
    );
  }
}
