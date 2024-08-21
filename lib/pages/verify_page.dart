import 'package:flutter/material.dart';
import 'package:improwave/components/my_button.dart';
import 'package:improwave/components/code_textfield.dart';
import 'dart:async';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  int _remainingSeconds = 10;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_remainingSeconds > 0) {
          setState(
            () {
              _remainingSeconds--;
            },
          );
        }
      },
    );
  }

  String _formatTimer() {
    int minutes = _remainingSeconds ~/ 60;
    int seconds = _remainingSeconds % 60;
    return '${minutes.toString().padLeft(2)}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          size: 30,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Logo
                Icon(
                  Icons.lock,
                  size: 150,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                const SizedBox(height: 40),

                // Info text
                Text(
                  'کد تایید چهار رقمی به شماره \u202A0912***546\u202C ارسال شد',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.tertiaryFixed,
                      fontSize: 18),
                ),

                const SizedBox(height: 10),

                // Edit number
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'تغییر شماره تلفن',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onTertiary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 90),

                // Code textfields
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CodeTextfield(firstBox: true, lastBox: false),
                      CodeTextfield(firstBox: false, lastBox: false),
                      CodeTextfield(firstBox: false, lastBox: false),
                      CodeTextfield(firstBox: false, lastBox: true),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                // verify button
                MyButton(onTap: () {}, text: 'ثبت نام'),

                const SizedBox(height: 260),

                // Timer
                if (_remainingSeconds != 0)
                  Text(
                    'ارسال مجدد کد تایید پس از ${_formatTimer()}',
                    style: TextStyle(
                      color:
                          Theme.of(context).colorScheme.onTertiaryFixedVariant,
                      fontSize: 16,
                    ),
                  ),

                // Send again
                if (_remainingSeconds == 0)
                  GestureDetector(
                    child: Text(
                      'ارسال مجدد کد تایید',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onTertiary,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {
                      _remainingSeconds = 10;
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
