import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SearchBar(
          backgroundColor: WidgetStatePropertyAll(
            Theme.of(context).colorScheme.secondaryContainer,
          ),
          elevation: const WidgetStatePropertyAll(2),
          hintText: "جستجو...",
          hintStyle: WidgetStatePropertyAll(
            TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          trailing: [
            Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.tertiary,
            )
          ],
        ),
      ),
    );
  }
}
