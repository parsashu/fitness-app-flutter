import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/notification_bell.dart';
import 'package:improwave/components/containers/workout/workout_program.dart';
import 'package:improwave/components/icons/notification_label.dart';
import 'package:improwave/utils/select_image.dart';

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
        actions: const [
          Stack(
            children: [
              NotificationBell(),
              NotificationDot(),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            const WorkoutProgram(),
            const SizedBox(height: 80),
            SizedBox(
              height: 200,
              width: 350,
              child: Image(image: getImage('شکم')),
            )
          ],
        ),
      ),
    );
  }
}
