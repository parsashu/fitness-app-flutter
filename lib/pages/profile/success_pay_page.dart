import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/my_button.dart';
import 'package:improwave/utils/is_trainer_provider.dart';
import 'package:provider/provider.dart';

class SuccessPayPage extends StatelessWidget {
  const SuccessPayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 320),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 40),
            child: Image.asset('assets/images/tick_icon.png'),
          ),
          const Text(
            'پرداخت شما با موفقیت انجام شد.',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.green,
              fontSize: 22
            ),
          ),
          const Spacer(),
          MyButton(
            green: true,
            onTap: () {
              Provider.of<IsTrainerProvider>(context, listen: false)
                  .setTrainer(true);
              Navigator.pushReplacementNamed(context, '/main');
            },
            text: 'بازگشت به صفحه اصلی',
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
