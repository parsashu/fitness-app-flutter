import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: SearchBar(
          backgroundColor: WidgetStatePropertyAll(
            Theme.of(context).colorScheme.tertiaryContainer,
          ),
          elevation: const WidgetStatePropertyAll(0),
          hintText: "جستجو...",
          hintStyle:
              WidgetStatePropertyAll(Theme.of(context).textTheme.displayMedium),
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
