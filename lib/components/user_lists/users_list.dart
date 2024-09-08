import 'package:flutter/material.dart';
import 'package:improwave/components/containers/search_profile.dart';

class UsersList extends StatelessWidget {
  const UsersList({super.key, required this.users});

  final List<SearchProfile> users;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: users,
            ),
          ),
        ),
      ],
    );
  }
}
