import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWeightPicker extends StatefulWidget {
  const MyWeightPicker({super.key});

  @override
  State<MyWeightPicker> createState() => _MyWeightPickerState();
}

class _MyWeightPickerState extends State<MyWeightPicker> {
  int _selectedWeight = 80;

  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
      itemExtent: 40,
      onSelectedItemChanged: (index) {
        setState(() {
          _selectedWeight = 80 + index;
        });
      },
      children: List<Widget>.generate(
        391,
        (index) {
          final weight = 80 + index;
          return Center(
            child: Text('$weight'),
          );
        },
      ),
    );
  }
}
