import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/buttons/my_button.dart';
import 'package:improwave/components/icons/logo.dart';
import 'package:improwave/components/textfields/my_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  // Error message to display
  String _errorMessage = '';

  // sign user in method
  void signUserIn() async {
    // show loading circle
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: phoneController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        _setError('Invalid email or password.');
      } else if (e.code == 'invalid-email') {
        _setError('Please enter a valid email address.');
      } else {
        _setError('An error occurred. Please try again.');
      }
    } finally {
      if (mounted) {
        Navigator.of(context, rootNavigator: true).pop();
      }
    }
  }

  void _setError(String message) {
    if (mounted) {
      setState(() {
        _errorMessage = message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),

              // Logo
              const Logo(),

              const SizedBox(height: 34),

              // welcome back message
              Text(
                'خوش آمدید',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.tertiaryFixedDim,
                ),
              ),

              const SizedBox(height: 140),

              // Error message
              if (_errorMessage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        _errorMessage,
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

              // Phone number textfield
              MyTextfield(
                controller: phoneController,
                hintText: 'شماره تلفن',
              ),

              const SizedBox(height: 350),

              // login button
              MyButton(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/verify');
                },
                text: 'تایید',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
