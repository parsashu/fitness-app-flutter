// weight_picker_modal.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class HeightPickerModal extends StatefulWidget {
  final int initialHeight;
  final ValueChanged<int> onHeightSelected;

  const HeightPickerModal({
    super.key,
    required this.initialHeight,
    required this.onHeightSelected,
  });

  @override
  State<HeightPickerModal> createState() => _WeightPickerModalState();

  static void show(BuildContext context, int initialHeight,
      ValueChanged<int> onHeightSelected) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => HeightPickerModal(
        initialHeight: initialHeight == 0 ? 180 : initialHeight,
        onHeightSelected: onHeightSelected,
      ),
    );
  }
}

class _WeightPickerModalState extends State<HeightPickerModal> {
  late int _tempSelectedHeight;

  @override
  void initState() {
    super.initState();
    _tempSelectedHeight = widget.initialHeight;
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
            // iOS indicator
            Container(
              width: 70,
              height: 4,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey4,
                borderRadius: BorderRadius.circular(2),
              ),
            ),

            // Numbers
            Expanded(
              child: Stack(
                children: [
                  CupertinoPicker(
                    magnification: 1.22,
                    squeeze: 0.9,
                    useMagnifier: true,
                    itemExtent: 37,
                    scrollController: FixedExtentScrollController(
                      initialItem: widget.initialHeight - 50,
                    ),
                    onSelectedItemChanged: (int selectedItem) {
                      setState(() {
                        _tempSelectedHeight = selectedItem + 50;
                      });
                      HapticFeedback.selectionClick();
                    },
                    children: List<Widget>.generate(
                      221,
                      (int index) {
                        return Center(
                          child: Text(
                            '${index + 50}',
                            style: const TextStyle(fontSize: 20),
                          ),
                        );
                      },
                    ),
                  ),

                  // cm label - overflow problem
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      width: 90,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            CupertinoColors.systemBackground
                                .resolveFrom(context)
                                .withOpacity(0),
                            CupertinoColors.systemBackground
                                .resolveFrom(context),
                          ],
                          stops: const [0.0, 0.5],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.activeBlue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
                widget.onHeightSelected(_tempSelectedHeight);
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
