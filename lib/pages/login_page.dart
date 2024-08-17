import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/my_button.dart';
import 'package:improwave/components/my_textfield.dart';

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
    // Get screen height and width
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.01),

                // logo
                // Image.asset(
                //   'lib/assets/images/logo.png',
                //   height: 100,
                // ),

                Icon(
                  Icons.lock,
                  size: screenWidth * 0.25,
                  color: Theme.of(context).colorScheme.secondary,
                ),

                SizedBox(height: screenHeight * 0.025),

                // welcome back message
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiaryFixed,
                    fontSize: screenWidth * 0.04,
                  ),
                ),

                SizedBox(height: screenHeight * 0.04),

                // Error message
                if (_errorMessage.isNotEmpty)
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.06,
                      vertical: screenHeight * 0.006,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          _errorMessage,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                            fontSize: screenWidth * 0.035,
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

                SizedBox(height: screenHeight * 0.012),

                // pw textfield
                MyTextfield(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                SizedBox(height: screenHeight * 0.012),

                // forgot password?
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onTertiaryFixedVariant,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.02),

                // login button
                MyButton(
                  onTap: signUserIn,
                  text: 'Sign In',
                ),

                SizedBox(height: screenHeight * 0.3),

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
                // const Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     SquareTile(imagePath: 'lib/assets/images/google.png')
                //   ],
                // ),

                SizedBox(height: screenHeight * 0.03),

                // register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member?'),
                    SizedBox(width: screenWidth * 0.01),
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
