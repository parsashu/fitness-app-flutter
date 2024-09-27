import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/floating_back_button.dart';
import 'package:improwave/components/containers/workout_containers/workout_view.dart';
import 'package:improwave/components/dividers/ios_indicator.dart';
import 'package:persian_fonts/persian_fonts.dart';

class SectionPage extends StatelessWidget {
  const SectionPage({super.key});

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
            child: Image.asset(
              'assets/images/workout/chest_workout2.png',
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
                        child: Image.asset(
                          'assets/images/workout/chest_workout2.png',
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Title
                      Positioned(
                        bottom: 15,
                        right: 25,
                        child: Text(
                          'سینه',
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
                      ...List.generate(
                        10,
                        (index) {
                          return Padding(
                            padding:
                                const EdgeInsets.only(bottom: 5, right: 20),
                            child: WorkoutView(
                              title: 'پرس سینه',
                              imagePath:
                                  'assets/images/workout/chest_workout6.png',
                              sets: '4 x 12',
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
