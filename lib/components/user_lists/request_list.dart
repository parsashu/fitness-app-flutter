import 'package:flutter/material.dart';
import 'package:improwave/components/containers/friend_request.dart';

class RequestList extends StatefulWidget {
  const RequestList({super.key});

  @override
  _RequestListState createState() => _RequestListState();
}

class _RequestListState extends State<RequestList> {
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
    return Column(
      children: [
        for (int i = 0; i < requests.length; i++)
          DismissibleFriendRequest(
            key: ValueKey(requests[i]),
            request: requests[i],
            onDismissed: () => removeRequest(i),
          ),
      ],
    );
  }
}

class DismissibleFriendRequest extends StatelessWidget {
  final Map<String, dynamic> request;
  final VoidCallback onDismissed;

  const DismissibleFriendRequest({
    required Key key,
    required this.request,
    required this.onDismissed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: key!,
      direction: DismissDirection.endToStart,
      onDismissed: (_) => onDismissed(),
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: FriendRequest(
        name: request['name'],
        avatar: request['avatar'],
        isThisTrainer: request['isThisTrainer'],
      ),
    );
  }
}