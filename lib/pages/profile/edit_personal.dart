import 'package:flutter/material.dart';
import 'package:improwave/components/bars/back_app_bar.dart';
import 'package:improwave/components/pickers/my_weight_picker.dart';

class EditPersonal extends StatelessWidget {
  const EditPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(bright: false),
      body: Column(
        children: [
          MyWeightPicker(),
        ],
      ),
    );
  }
}
