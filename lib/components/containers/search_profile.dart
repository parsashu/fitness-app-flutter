import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({
    super.key,
    required this.title,
    required this.subTitle,
    this.backgroundImage,
  });

  final String title;
  final String subTitle;
  final ImageProvider<Object>? backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceBright,
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
                    style: Theme.of(context).textTheme.titleLarge
                  ),

                  const SizedBox(height: 5),

                  // Subtitle
                  Text(
                    subTitle,
                    textDirection: TextDirection.rtl,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),

            if (backgroundImage != null) const SizedBox(width: 20),

            // Profile picture
            if (backgroundImage != null)
              Flexible(
                flex: 3,
                child: CircleAvatar(
                  radius: 38,
                  backgroundImage: backgroundImage,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
