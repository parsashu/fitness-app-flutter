import 'package:flutter/material.dart';
import 'package:improwave/components/lists/profile_view_list.dart';
import 'package:improwave/components/my_scaffold.dart';
import 'package:improwave/utils/is_trainer_provider.dart';
import 'package:provider/provider.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Flag to determine if user is trainer
    bool isTrainer = context.watch<IsTrainerProvider>().isTrainer;

    // Friend's data
    final List names = [
      for (int i = 0; i < 10; i++) 'Farbod Hajian',
    ];

    final List bios = [
      for (int i = 0; i < 10; i++)
        'دارای قهرمانی کشوری و مدرک بین المللی مربی گری',
    ];

    final List images = [
      for (int i = 0; i < 10; i++)
        const AssetImage(
          'assets/images/example_profile.png',
        ),
    ];

    return MyScaffold(
      body: ProfileViewList(
        names: names,
        bios: bios,
        images: images,
        isThisTrainer: !isTrainer,
      ),
    );
  }
}
