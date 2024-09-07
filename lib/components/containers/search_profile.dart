import 'package:flutter/material.dart';

class SearchProfile extends StatelessWidget {
  const SearchProfile({
    super.key,
    required this.name,
    required this.bio,
    this.avatar,
    required this.onTap,
  });

  final String name;
  final String bio;
  final ImageProvider<Object>? avatar;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
                    Text(name,
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.titleLarge),
    
                    const SizedBox(height: 5),
    
                    // Subtitle
                    Text(
                      bio,
                      textDirection: TextDirection.rtl,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
    
              if (avatar != null) const SizedBox(width: 20),
    
              // Profile picture
              if (avatar != null)
                Flexible(
                  flex: 3,
                  child: CircleAvatar(
                    radius: 38,
                    backgroundImage: avatar,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
