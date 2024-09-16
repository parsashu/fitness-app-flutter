import 'package:flutter/material.dart';
import 'package:improwave/components/lists/tra_list_search.dart';
import 'package:improwave/components/my_scaffold.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      ),
    );
  }
}
