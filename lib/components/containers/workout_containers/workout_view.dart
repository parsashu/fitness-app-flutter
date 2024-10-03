import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/dividers/my_horizontal_divider.dart';
import 'package:persian_fonts/persian_fonts.dart';

class WorkoutView extends StatelessWidget {
  const WorkoutView({
    super.key,
    required this.title,
    this.sets,
    required this.imagePath,
    required this.onPressed,
  });

  final String title;
  final String? sets;
  final String imagePath;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: CupertinoButton(
              padding: const EdgeInsets.all(0),
              onPressed: onPressed,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: sets != null ? 25 : 42, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Title

                        Text(
                          title,
                          style: PersianFonts.Vazir.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // Sets
                        if (sets != null) ...[
                          const SizedBox(height: 15),
                          Text(
                            sets!,
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onTertiaryFixedVariant,
                            ),
                          ),
                        ],

                        const Spacer(),

                        // Divider
                        const MyHorizontalDivider(),
                      ],
                    ),
                  ),

                  const SizedBox(width: 25),

                  // Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: AssetImage(imagePath),
                      width: 110,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
