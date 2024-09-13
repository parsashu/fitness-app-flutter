import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

class WorkoutSection extends StatefulWidget {
  final VoidCallback onPressed;
  final String title;

  const WorkoutSection({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  WorkoutSectionState createState() => WorkoutSectionState();
}

class WorkoutSectionState extends State<WorkoutSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.95).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  void _handleTapUp(TapUpDetails details) {
    _animationController.reverse();
  }

  void _handleTapCancel() {
    _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: widget.onPressed,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          width: 350,
          height: 200,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('assets/images/workout/leg_workout.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              // Blur
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                height: 60,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    blendMode: BlendMode.darken,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.3),
                            Colors.black.withOpacity(0.5),
                          ],
                          stops: const [0.0, 0.4, 1.0],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Title
              Positioned(
                right: 30,
                bottom: 20,
                child: Text(
                  widget.title,
                  style: PersianFonts.Vazir.copyWith(
                    color: Colors.grey.shade200,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
