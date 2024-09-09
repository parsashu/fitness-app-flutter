import 'package:flutter/material.dart';
import 'package:improwave/components/bars/back_app_bar.dart';
import 'package:improwave/components/buttons/my_button.dart';

class PayPage extends StatelessWidget {
  const PayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackAppBar(bright: false),
      body: Column(
        children: [
          const SizedBox(height: 350),
          const Text('اطلاعات پرداخت'),
          const Spacer(),
          MyButton(
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/successPay');
            },
            text: 'پرداخت',
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
