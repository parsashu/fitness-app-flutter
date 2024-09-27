import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/floating_back_button.dart';
import 'package:improwave/components/containers/workout_containers/workout_view.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/workout/chest_workout.png',
            fit: BoxFit.cover,
            height: 300,
            width: double.infinity,
          ),
          CustomScrollView(
            slivers: <Widget>[
              const SliverAppBar(
                elevation: 0,
                expandedHeight: 210.0,
                surfaceTintColor: Colors.transparent,
                floating: false,
                pinned: true,
                backgroundColor: Colors.transparent,
              ),
              SliverToBoxAdapter(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20),
                    child: Column(
                      children: List.generate(
                        10,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: WorkoutView(
                              title: 'پرس سینه ${index + 1}',
                              imagePath:
                                  'assets/images/workout/chest_workout6.png',
                              sets: '4 x 12',
                              onPressed: () {},
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Positioned(
            top: 40,
            left: 25,
            child: FloatingBackButton(),
          ),
        ],
      ),
    );
  }
}
