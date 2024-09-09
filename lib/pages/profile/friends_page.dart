import 'package:flutter/material.dart';
import 'package:improwave/components/bars/divider_app_bar.dart';
import 'package:improwave/components/user_lists/ath_list_search.dart';
import 'package:improwave/components/user_lists/tra_list_search.dart';
import 'package:improwave/utils/is_trainer_provider.dart';
import 'package:provider/provider.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isTrainer = Provider.of<IsTrainerProvider>(context).isTrainer;

    return Scaffold(
      appBar: const DividerAppBar(),
      body: isTrainer ? const AthListSearch() : const TraListSearch(),
    );
  }
}
