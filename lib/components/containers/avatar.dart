import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.imagePath,
  });

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imagePath!,
        fit: BoxFit.cover,
      ),
    );
  }
}
