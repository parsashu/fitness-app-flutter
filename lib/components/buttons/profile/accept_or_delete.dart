import 'package:flutter/material.dart';

class AcceptOrDeleteButton extends StatelessWidget {
  const AcceptOrDeleteButton({
    super.key,
    required this.onTap,
    this.isThisAccept = false,
  });

  final void Function()? onTap;
  final bool isThisAccept;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 420,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isThisAccept
              ? Colors.blue
              : Theme.of(context).colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Center(
          child: FittedBox(
            child: isThisAccept
                ? const Text(
                    'تایید',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : const Text(
                    'حذف',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
