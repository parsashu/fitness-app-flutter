import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/containers/search_profile.dart';

class FriendRequest extends StatelessWidget {
  const FriendRequest({
    super.key,
    required this.name,
    required this.avatar,
    required this.isThisTrainer,
  });

  final String name;
  final ImageProvider<Object> avatar;
  final bool isThisTrainer;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),

        // Accept
        Flexible(
          flex: 3,
          child: SizedBox(
            width: 95,
            height: 40,
            child: CupertinoButton(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              onPressed: () {},
              color: CupertinoColors.activeBlue,
              borderRadius: BorderRadius.circular(40),
              child: const Text(
                
                'تایید',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),

        // Profile
        Flexible(
          flex: 9,
          child: Expanded(
            child: SearchProfile(
              name: name,
              avatar: avatar,
              isThisTrainer: isThisTrainer,
            ),
          ),
        ),
      ],
    );
  }
}