import 'package:flutter/material.dart';
import 'package:improwave/components/bars/search_bar.dart';
import 'package:improwave/components/containers/profile_view.dart';

class ProfileViewList extends StatelessWidget {
  const ProfileViewList({
    super.key,
    required this.names,
    required this.bios,
    required this.images,
    this.isThisTrainer = true,
  });

  final List names;
  final List bios;
  final List images;
  final bool isThisTrainer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: names.length + 1,
            itemBuilder: (context, index) {
              // Search bar
              if (index == 0) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  color: Theme.of(context).colorScheme.surfaceBright,
                  child: const MySearchBar(),
                );
              }

              // Profiles
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    SizedBox(
                      height: 115,
                      child: ProfileView(
                        name: names[index - 1],
                        bio: bios[index - 1],
                        avatar: images[index - 1],
                        isThisTrainer: isThisTrainer,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
