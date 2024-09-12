import 'package:flutter/material.dart';
import 'package:improwave/components/containers/friend_request.dart';

class RequestList extends StatelessWidget {
  const RequestList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i <= 5; i++)
          const FriendRequest(
            name: 'Farbod Hajian',
            avatar: AssetImage('assets/images/example_profile.png'),
            isThisTrainer: true,
          ),
        for (int i = 1; i <= 5; i++)
          const FriendRequest(
            name: 'Ehsan Jokar',
            avatar: AssetImage('assets/images/example_athlete_profile.png'),
            isThisTrainer: false,
          ),
      ],
    );
  }
}