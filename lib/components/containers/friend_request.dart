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
        SizedBox(
          width: 100,
          height: 35,
          child: CupertinoButton(

            padding: const EdgeInsets.symmetric(horizontal: 25),
            onPressed: () {},
            color: Colors.blue,         
            borderRadius: BorderRadius.circular(40),
            child: const Text(
              
              'تایید',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),

        // Profile
        Expanded(
          child: SearchProfile(
            name: name,
            avatar: avatar,
            isThisTrainer: isThisTrainer,
          ),
        ),
      ],
    );
  }
}