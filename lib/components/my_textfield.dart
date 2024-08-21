import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final dynamic controller;
  final String hintText;
  final bool obscureText;

  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.outlineVariant,
            ),
          ),
          fillColor: Theme.of(context).colorScheme.secondaryContainer,
          filled: true,
          hintText: hintText,
          hintTextDirection: TextDirection.rtl,
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.tertiary),
        ),
      ),
    );
  }
}
