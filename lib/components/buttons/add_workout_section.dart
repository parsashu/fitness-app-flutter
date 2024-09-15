import 'package:flutter/material.dart';
import 'package:improwave/components/containers/my_frosted_glass.dart';

class AddWorkoutSection extends StatefulWidget {
  const AddWorkoutSection({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  WorkoutSectionState createState() => WorkoutSectionState();
}

class WorkoutSectionState extends State<AddWorkoutSection>
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
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage('assets/images/dumbbells2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: MyFrostedGlass(
              child: Icon(
                Icons.add_circle_outline,
                color: Colors.grey.shade100,
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
