import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
    required this.text,
    this.showPersonal = false,
    this.weight = '-',
    this.height = '-',
    this.age = '-',
    this.bmi = '-',
  });

  final String text;
  final bool showPersonal;
  final String weight;
  final String height;
  final String age;
  final String bmi;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.outline,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // B I O
          // Title
          Text(
            'درباره',
            style: Theme.of(context).textTheme.displayMedium,
          ),

          const SizedBox(height: 5),

          // Subtitle
          Text(
            text,
            textDirection: TextDirection.rtl,
            style: Theme.of(context).textTheme.headlineSmall,
          ),

          // P E R S O N A L
          if (showPersonal) ...[
            const SizedBox(height: 30),
            Text(
              'اطلاعات فردی',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(              
                children: [
                  _buildInfoRow(context, CupertinoIcons.calendar, 'سن', age),
                  const SizedBox(height: 20),
                  _buildInfoRow(context, Icons.timelapse_sharp, 'وزن', weight),
                  const SizedBox(height: 20),
                  _buildInfoRow(context, Icons.height, 'قد', height),
                  const SizedBox(height: 20),
                  _buildInfoRow(context, Icons.accessibility_new, 'BMI', bmi),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildInfoRow(
      BuildContext context, IconData icon, String label, String value) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Icon(icon),
        const SizedBox(width: 30),
        Text(label, style: Theme.of(context).textTheme.headlineSmall),
        const Spacer(),
        Text(value, style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(width: 15),
      ],
    );
  }
}
