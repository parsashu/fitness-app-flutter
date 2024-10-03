import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/notification_bell.dart';
import 'package:improwave/components/icons/notification_label.dart';
import 'package:improwave/pages/workout_pages/my_programs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceBright,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceBright,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceBright,
        actions: const [
          Stack(
            children: [
              NotificationBell(),
              NotificationDot(),
            ],
          ),
        ],
      ),
      body: const MyProgramsPage(
        appBar: false,
        editable: true,
      ),
    );
  }
}
