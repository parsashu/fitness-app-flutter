import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_bar.dart';
import 'package:improwave/components/containers/search_profile.dart';

class UsersListSearch extends StatelessWidget {
  const UsersListSearch({super.key, required this.users});

  final List<SearchProfile> users;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  color: Theme.of(context).colorScheme.surfaceBright,
                  child: const MySearchBar(),
                ),
                for (int i = 1; i < 9; i++)
                  SearchProfile(
                    name: 'مربی شماره $i',
                    bio:
                        'مربی شماره $i به شما کمک می کند تا به بدن ایده آل خود رسیده و این کار را بدون تفکر و تحقیق در این زمینه انجام داده پس برنامه های خود را به او بسپارید',
                    avatar:
                        const AssetImage('assets/images/example_profile.png'),
                    onTap: () => Navigator.pushNamed(context, '/othersProfile'),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
