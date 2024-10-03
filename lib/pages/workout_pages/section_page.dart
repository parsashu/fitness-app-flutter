import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/floating_back_button.dart';
import 'package:improwave/components/containers/workout_containers/workout_view.dart';
import 'package:improwave/components/dividers/ios_indicator.dart';
import 'package:persian_fonts/persian_fonts.dart';

// Workout data with proper type declaration
final List<Map<String, String>> workoutData = [
  {
    "title": "پرس سینه",
    "imagePath": "assets/images/workout/chest_workout.png",
    "sets": "4 x 12"
  },
  {
    "title": "پرس سینه شیبدار",
    "imagePath": "assets/images/workout/chest_workout2.png",
    "sets": "3 x 10"
  },
  {
    "title": "فلای سینه با دمبل",
    "imagePath": "assets/images/workout/chest_workout3.png",
    "sets": "3 x 15"
  },
  {
    "title": "پرس سینه دمبل",
    "imagePath": "assets/images/workout/chest_workout4.png",
    "sets": "4 x 10"
  },
  {
    "title": "دیپ سینه",
    "imagePath": "assets/images/workout/chest_workout5.png",
    "sets": "3 x 12"
  },
  {
    "title": "دیپ سینه",
    "imagePath": "assets/images/workout/chest_workout6.png",
    "sets": "3 x 12"
  },
  {
    "title": "دیپ سینه",
    "imagePath": "assets/images/workout/chest_workout6.png",
    "sets": "3 x 12"
  },
  {
    "title": "دیپ سینه",
    "imagePath": "assets/images/workout/chest_workout6.png",
    "sets": "3 x 12"
  },
  {
    "title": "دیپ سینه",
    "imagePath": "assets/images/workout/chest_workout6.png",
    "sets": "3 x 12"
  },
  {
    "title": "دیپ سینه",
    "imagePath": "assets/images/workout/chest_workout6.png",
    "sets": "3 x 12"
  },
];

class SectionPage extends StatelessWidget {
  const SectionPage({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background image fixed
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image(
              image: image,
              fit: BoxFit.cover,
              height: 300,
              width: double.infinity,
            ),
          ),
          CustomScrollView(
            slivers: <Widget>[
              // App bar
              SliverAppBar(
                elevation: 0,
                expandedHeight: 220.0,
                surfaceTintColor: Colors.transparent,
                floating: false,
                pinned: true,
                stretch: true,
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                collapsedHeight: 0,
                toolbarHeight: 0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      // Background image
                      Positioned.fill(
                        child: Image(
                          image: image,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Title
                      Positioned(
                        bottom: 15,
                        right: 25,
                        child: Text(
                          title,
                          style: PersianFonts.Vazir.copyWith(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // Body
              SliverToBoxAdapter(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),

                      // IOS indicator
                      const IosIndicator(),

                      const SizedBox(height: 15),

                      // Workout list
                      ...workoutData.map(
                        (workout) {
                          return Padding(
                            padding:
                                const EdgeInsets.only(bottom: 5, right: 20),
                            child: WorkoutView(
                              title: workout['title']!,
                              imagePath: workout['imagePath']!,
                              sets: workout['sets']!,
                              onPressed: () {},
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Back button
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
