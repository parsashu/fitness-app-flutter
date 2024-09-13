import 'package:flutter/material.dart';
import 'package:improwave/components/containers/friend_request.dart';

class RequestList extends StatefulWidget {
  const RequestList({super.key});

  @override
  RequestListState createState() => RequestListState();
}

class RequestListState extends State<RequestList> {
  List<Map<String, dynamic>> requests = [
    for (int i = 1; i <= 5; i++)
      {
        'name': 'Farbod Hajian',
        'avatar': const AssetImage('assets/images/example_profile.png'),
        'isThisTrainer': true,
      },
    for (int i = 1; i <= 5; i++)
      {
        'name': 'Ehsan Jokar',
        'avatar': const AssetImage('assets/images/example_athlete_profile.png'),
        'isThisTrainer': false,
      },
  ];

  void removeRequest(int index) {
    setState(() {
      requests.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          for (int i = 0; i < requests.length; i++)
            DismissibleFriendRequest(
              key: ValueKey(requests[i]),
              request: requests[i],
              onDismissed: () => removeRequest(i),
            ),
        ],
      ),
    );
  }
}

class DismissibleFriendRequest extends StatefulWidget {
  final Map<String, dynamic> request;
  final VoidCallback onDismissed;

  const DismissibleFriendRequest({
    super.key,
    required this.request,
    required this.onDismissed,
  });

  @override
  State<DismissibleFriendRequest> createState() =>
      _DismissibleFriendRequestState();
}

class _DismissibleFriendRequestState extends State<DismissibleFriendRequest> {
  bool isAccepted = false;

  // Method to accept friend request
  void toggleAccept() {
    setState(() {
      isAccepted = !isAccepted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: widget.key!,
      direction: DismissDirection.endToStart,
      onDismissed: (_) => widget.onDismissed(),
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: FriendRequest(
        name: widget.request['name'],
        avatar: widget.request['avatar'],
        isThisTrainer: widget.request['isThisTrainer'],
        isAccepted: isAccepted,
        onTap: toggleAccept,
      ),
    );
  }
}
