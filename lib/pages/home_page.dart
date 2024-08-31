import 'package:flutter/material.dart';
import 'package:improwave/components/notification_dot.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_none_rounded,
                  size: 35,
                ),
              ),
              const NotificationDot()
            ],
          ),
        ],
      ),
      body: const Center(child: Text('Home Page')),
    );
  }
}
