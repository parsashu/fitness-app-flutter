import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/my_button.dart';
import 'package:improwave/components/my_textfield.dart';
// import 'package:improwave/components/square_tile.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // Error message to display
  String _errorMessage = '';

  // Sign user in method
  void signUserUp() async {
    // Show loading circle
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // Try creating the user
    try {
      // Check if password is confirmed
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
      } else {
        _setError("Passwords don't match.");
      }
      ;
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

                // // welcome back message
                // Text(
                //   '!',
                //   style: TextStyle(
                //     color: Colors.grey[700],
                //     fontSize: 16,
                //   ),
                // ),

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

                // Password textfield
                MyTextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // Confirm password textfield
                MyTextfield(
                  controller: confirmPasswordController,
                  hintText: 'Confirm password',
                  obscureText: true,
                ),

                const SizedBox(height: 20),

                // login button
                MyButton(
                  onTap: signUserUp,
                  text: 'Sign Up',
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
                    const Text('Already have an account?'),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Login now',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onTertiary, fontWeight: FontWeight.bold),
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
