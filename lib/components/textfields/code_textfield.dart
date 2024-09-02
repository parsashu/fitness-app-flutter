import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeTextfield extends StatelessWidget {
  const CodeTextfield({
    super.key,
    required this.lastBox,
    required this.firstBox,
  });

  final bool firstBox;
  final bool lastBox;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 66,
      height: 66,
      child: TextField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 22),
        decoration: InputDecoration(
          counterText: '',
          // Normal
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.outlineVariant,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          // Focused
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          fillColor: Theme.of(context).colorScheme.primaryContainer,
          filled: true,
        ),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: (value) {
          // Go to next focus
          if (value.length == 1 && !lastBox) {
            FocusScope.of(context).nextFocus();
            // Go to previos focus
          } else if (value.isEmpty && !firstBox) {
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    );
  }
}
