import 'package:flutter/material.dart';
import 'package:improwave/components/containers/my_frosted_glass.dart';
import 'package:improwave/pages/workout_pages/section_page.dart';
import 'package:persian_fonts/persian_fonts.dart';

class WorkoutSection extends StatefulWidget {
  const WorkoutSection({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final ImageProvider<Object> image;

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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SectionPage(
              title: widget.title,
              image: widget.image,
            ),
          ),
        );
      },
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          width: 202,
          height: 300,
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: widget.image,
              fit: BoxFit.cover,
            ),
          ),

          // Frosted glass
          child: Padding(
            padding: const EdgeInsets.only(
              top: 180,
              bottom: 10,
              left: 120,
              right: 10,
            ),
            child: MyFrostedGlass(
              child: Text(
                widget.title,
                style: PersianFonts.Vazir.copyWith(
                  color: Colors.grey.shade200,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
