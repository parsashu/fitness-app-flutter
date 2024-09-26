import 'package:flutter/material.dart';
import 'package:improwave/components/containers/workout_containers/workout_view.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: CustomScrollView(
        anchor: 0.0,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230.0,
            floating: false,
            pinned: false,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/workout/chest_workout.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Container(
                color: Colors.white, // background color to match SliverAppBar
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      height: 20,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    WorkoutView(
                      title: 'پرس سینه',
                      imagePath: 'assets/images/workout/chest_workout3.png',
                      sets: '4 x 12',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    WorkoutView(
                      title: 'پرس سینه',
                      imagePath: 'assets/images/workout/chest_workout3.png',
                      sets: '4 x 12',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    WorkoutView(
                      title: 'پرس سینه',
                      imagePath: 'assets/images/workout/chest_workout3.png',
                      sets: '4 x 12',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    WorkoutView(
                      title: 'پرس سینه',
                      imagePath: 'assets/images/workout/chest_workout3.png',
                      sets: '4 x 12',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    WorkoutView(
                      title: 'پرس سینه',
                      imagePath: 'assets/images/workout/chest_workout3.png',
                      sets: '4 x 12',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    WorkoutView(
                      title: 'پرس سینه',
                      imagePath: 'assets/images/workout/chest_workout3.png',
                      sets: '4 x 12',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    WorkoutView(
                      title: 'پرس سینه',
                      imagePath: 'assets/images/workout/chest_workout3.png',
                      sets: '4 x 12',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    WorkoutView(
                      title: 'پرس سینه',
                      imagePath: 'assets/images/workout/chest_workout3.png',
                      sets: '4 x 12',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    WorkoutView(
                      title: 'پرس سینه',
                      imagePath: 'assets/images/workout/chest_workout3.png',
                      sets: '4 x 12',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),

          // SliverList.builder(
          //   itemBuilder: (context, index) {
          //     if (index == 0) {
          //       return Container(
          //         padding: const EdgeInsets.symmetric(horizontal: 0),
          //         height: 20,
          //         decoration: const BoxDecoration(
          //           color: Colors.red,
          //           borderRadius: BorderRadius.vertical(
          //             top: Radius.circular(20),
          //           ),
          //         ),
          //       );
          //     }
          //     return WorkoutView(
          //       title: 'پرس سینه',
          //       imagePath: 'assets/images/workout/chest_workout3.png',
          //       sets: '4 x 12',
          //       onPressed: () {},
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
