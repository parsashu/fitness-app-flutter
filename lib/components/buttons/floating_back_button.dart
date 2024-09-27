import 'package:flutter/material.dart';

class FloatingBackButton extends StatelessWidget {
  const FloatingBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black.withOpacity(0.3),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 6),
        child: IconButton(
          onPressed: () => Navigator.pop(context),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
