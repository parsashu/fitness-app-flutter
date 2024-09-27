import 'package:flutter/cupertino.dart';

class IosIndicator extends StatelessWidget {
  const IosIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        Container(
      width: 70,
      height: 4,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: CupertinoColors.systemGrey4,
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
