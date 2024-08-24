import 'package:flutter/material.dart';
import 'package:improwave/components/avatar.dart';

class MyBox extends StatelessWidget {
  const MyBox({
    super.key,
    required this.title,
    required this.subTitle,
    this.imagePath,
  });

  final String title;
  final String subTitle;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 405,
      decoration: BoxDecoration(
        color: Colors.grey[350],
        borderRadius: BorderRadius.circular(18),
        border: Border.all(

          color: Colors.grey[400]!, //
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Text
            Flexible(
              flex: 11,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Title
                  Text(
                    title,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  // Subtitle
                  Text(
                    subTitle,
                    textDirection: TextDirection.rtl,
                    maxLines: 3,
                  ),
                ],
              ),
            ),

            if (imagePath != null) const SizedBox(width: 20),

            // Profile picture
            if (imagePath != null)
              Flexible(
                flex: 3,
                child: Avatar(
                  imagePath: imagePath,
                )
              ),
          ],
        ),
      ),
    );
  }
}
