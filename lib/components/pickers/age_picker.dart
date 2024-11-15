// weight_picker_modal.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:improwave/components/dividers/ios_indicator.dart';

class AgePickerModal extends StatefulWidget {
  final int initialAge;
  final ValueChanged<int> onAgeSelected;

  const AgePickerModal({
    super.key,
    required this.initialAge,
    required this.onAgeSelected,
  });

  @override
  State<AgePickerModal> createState() => _AgePickerModalState();

  static void show(
      BuildContext context, int initialAge, ValueChanged<int> onAgeSelected) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => AgePickerModal(
        initialAge: initialAge == 0 ? 18 : initialAge,
        onAgeSelected: onAgeSelected,
      ),
    );
  }
}

class _AgePickerModalState extends State<AgePickerModal> {
  late int _tempSelectedAge;

  @override
  void initState() {
    super.initState();
    _tempSelectedAge = widget.initialAge;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.only(top: 6.0),
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: BoxDecoration(
        color: CupertinoColors.systemBackground.resolveFrom(context),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            // IOS indicator
            const IosIndicator(),

            // Numbers
            Expanded(
              child: CupertinoPicker(
                magnification: 1.22,
                squeeze: 0.9,
                useMagnifier: true,
                itemExtent: 37,
                scrollController: FixedExtentScrollController(
                  initialItem: widget.initialAge - 7,
                ),
                onSelectedItemChanged: (int selectedItem) {
                  setState(() {
                    _tempSelectedAge = selectedItem + 7;
                  });
                  HapticFeedback.selectionClick();
                },
                children: List<Widget>.generate(
                  104,
                  (int index) {
                    return Center(
                      child: Text(
                        '${index + 7}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    );
                  },
                ),
              ),
            ),

            // Done button
            CupertinoButton(
              color: CupertinoColors.activeBlue,
              borderRadius: BorderRadius.circular(40),
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 8),
              child: const Text(
                'تایید',
                style: TextStyle(
                  color: CupertinoColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                widget.onAgeSelected(_tempSelectedAge);
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
