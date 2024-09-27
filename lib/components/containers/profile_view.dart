import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
    required this.name,
    this.bio,
    this.avatar,
    required this.isThisTrainer,
    this.bright = true,
    this.editable = false,
  });

  final String name;
  final String? bio;
  final ImageProvider<Object>? avatar;
  final bool isThisTrainer;
  final bool bright;
  final bool editable;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: isThisTrainer
          ? () => Navigator.pushNamed(context, '/traView')
          : () => Navigator.pushNamed(context, '/athView'),
      padding: EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          color: bright
              ? Theme.of(context).colorScheme.surfaceBright
              : Theme.of(context).colorScheme.surface,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Text
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Title
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Edit button
                        if (editable) ...[
                          SizedBox(
                            height: 28,
                            width: 55,
                            child: IconButton(
                              iconSize: 16,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryFixedVariant,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {},
                              icon: const Icon(FluentIcons.edit_16_filled),
                            ),
                          ),
                        ],

                        // Text
                        Text(
                          name,
                          textDirection: TextDirection.rtl,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),

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
                LayoutBuilder(
                  builder: (context, constraints) {
                    double radius = constraints.maxHeight / 2.1;

                    return CircleAvatar(
                      radius: radius,
                      backgroundImage: avatar,
                    );
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
