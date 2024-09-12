import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchProfile extends StatelessWidget {
  const SearchProfile({
    super.key,
    required this.name,
    this.bio,
    this.avatar,
    required this.isThisTrainer,
  });

  final String name;
  final String? bio;
  final ImageProvider<Object>? avatar;
  final bool isThisTrainer;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: isThisTrainer
          ? () => Navigator.pushNamed(context, '/traView')
          : () => Navigator.pushNamed(context, '/athView'),
      padding: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceBright,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Title
                    Text(name,
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.titleLarge),
                
                    // Subtitle
                    if (bio != null) ...[
                      const SizedBox(height: 5),
                      Text(
                        bio!,
                        textDirection: TextDirection.rtl,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ],
                ),
              ),

              // Profile picture
              if (avatar != null) ...[
                const SizedBox(width: 20),
                CircleAvatar(
                  radius: 40,
                  backgroundImage: avatar,
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
