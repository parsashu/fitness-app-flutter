import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/profile/accept_or_delete.dart';
import 'package:improwave/components/containers/profile_view.dart';

class FriendRequest extends StatelessWidget {
  const FriendRequest({
    super.key,
    required this.name,
    required this.avatar,
    required this.isThisTrainer,
    this.isAccepted = false,
    required this.onTap,
  });

  final String name;
  final ImageProvider<Object> avatar;
  final bool isThisTrainer;
  final bool isAccepted;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            // Accept
            SizedBox(
              width: 100,
              height: 38,
              child: AcceptOrDeleteButton(
                isThisAccept: !isAccepted,
                onTap: onTap,
              ),
            ),

            // Profile
            Expanded(
              child: ProfileView(
                name: name,
                avatar: avatar,
                isThisTrainer: isThisTrainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
