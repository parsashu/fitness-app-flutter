import 'package:flutter/material.dart';
import 'package:improwave/components/bars/back_app_bar.dart';
import 'package:improwave/components/buttons/my_button.dart';
import 'package:improwave/components/icons/logo.dart';
import 'package:improwave/components/textfields/code_textfield.dart';
import 'dart:async';

class VerifyPage extends StatefulWidget {
  const VerifyPage({super.key});

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  int _remainingSeconds = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(
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

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  String _formatTimer() {
    int minutes = _remainingSeconds ~/ 60;
    int seconds = _remainingSeconds % 60;
    return '${minutes.toString().padLeft(2)}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackAppBar(bright: false),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Logo
              const Logo(),

              const SizedBox(height: 40),

              // Info text
              Text(
                'کد تایید چهار رقمی به شماره \u202A0912***546\u202C ارسال شد',
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.titleMedium
              ),

              const SizedBox(height: 10),

              // Edit number
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/login');
                    },
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
              ),

              const SizedBox(height: 100),

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

              const SizedBox(height: 300),

              // verify button
              MyButton(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/main');
                },
                text: 'ورود',
              ),

              const SizedBox(height: 25),

              // Timer
              if (_remainingSeconds != 0)
                Text(
                  'ارسال مجدد کد تایید پس از ${_formatTimer()}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onTertiaryFixedVariant,
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
                    _remainingSeconds = 60;
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
