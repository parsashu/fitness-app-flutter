import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final dynamic controller;
  final String? hintText;
  final bool numberKeyboard;
  final bool bio;
  final String? label;

  const MyTextfield({
    super.key,
    required this.controller,
    this.hintText,
    this.numberKeyboard = true,
    this.bio = false,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        keyboardType: numberKeyboard
            ? const TextInputType.numberWithOptions()
            : TextInputType.text,
        maxLines: bio ? null : 1,
        maxLength: bio ? 140 : null,
        // Normal
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
            // Foucesed
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            fillColor: Theme.of(context).colorScheme.primaryContainer,
            filled: true,
            hintText: hintText,
            label: (label != null)
                ? Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      label!,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  )
                : null,
            hintTextDirection: TextDirection.rtl,
            hintStyle: TextStyle(color: Theme.of(context).colorScheme.tertiary),
            counterStyle: Theme.of(context).textTheme.labelSmall),
      ),
    );
  }
}
