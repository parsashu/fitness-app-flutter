import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/my_button.dart';
import 'package:improwave/components/my_textfield.dart';
// import 'package:improwave/components/square_tile.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final emailController = TextEditingController();

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
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException
      if (e.code == 'invalid-credential') {
        _setError('Invalid email or password.');
      } else if (e.code == 'invalid-email') {
        _setError('Please enter a valid email address.');
      } else {
        _setError('An error occurred. Please try again.');
      }
    } finally {
      // Pop the loading circle
      if (mounted) {
        Navigator.of(context, rootNavigator: true)
            .pop(); // Use rootNavigator to dismiss the dialog
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
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),

                // logo
                // Image.asset(
                //   'lib/assets/images/logo.png',
                //   height: 100,
                // ),

                Icon(
                  Icons.lock,
                  size: 100,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                const SizedBox(height: 20),

                // welcome back message
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiaryFixed,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 30),

                // Error message
                if (_errorMessage.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          _errorMessage,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),

                // email textfield
                MyTextfield(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // pw textfield
                MyTextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onTertiaryFixedVariant),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // login button
                MyButton(
                  onTap: signUserIn,
                  text: 'Sign In',
                ),

                const SizedBox(height: 150),

                // or continue with
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: Divider(
                //           thickness: 0.8,
                //           color: Colors.grey[400],
                //         ),
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                //         child: Text(
                //           'Continue with',
                //           style: TextStyle(color: Colors.grey[700]),
                //         ),
                //       ),
                //       Expanded(
                //         child: Divider(
                //           thickness: 0.8,
                //           color: Colors.grey[400],
                //         ),
                //       )
                //     ],
                //   ),
                // ),

                // const SizedBox(height: 30),

                // google sign in
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     SquareTile(imagePath: 'lib/assets/images/google.png')
                //   ],
                // ),

                const SizedBox(height: 30),

                // register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a memeber?'),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Register now',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onTertiary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
