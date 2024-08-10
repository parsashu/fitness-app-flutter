import 'package:flutter/material.dart';


class HabitTracker extends StatefulWidget {
  const HabitTracker({super.key});

  @override
  State<HabitTracker> createState() => _HabitTrackerState();
}

class _HabitTrackerState extends State<HabitTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue[200],
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Text('Habit'),
                const Expanded(child: SizedBox()),
              ]
            ),
          ),

          Container(
            color: Colors.blue[200],
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Text('Habit'),
                const Expanded(child: SizedBox()),
              ]
            ),
          ),

          Container(
            color: Colors.blue[200],
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                const Text('Habit'),
                const Expanded(child: SizedBox()),
              ]
            ),
          ),

        ]
      )
    );
  }
}