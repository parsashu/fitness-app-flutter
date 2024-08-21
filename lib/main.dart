import 'package:flutter/material.dart';
import 'package:improwave/pages/auth_page.dart';
// import 'package:improwave/pages/verify_page.dart';
import 'package:improwave/pages/home_page.dart';
// import 'package:improwave/routing/routes.dart';
import 'package:improwave/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  Future<bool> _checkIfIntroSeen() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('intro_seen') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _checkIfIntroSeen(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          return Consumer<ThemeProvider>(
            builder: (context, themeProvider, child) {
              return MaterialApp(
                  home: const AuthPage(),
                  // home: const VerifyPage(),
                  theme: Provider.of<ThemeProvider>(context).themeData,
                  routes: {
                    '/home': (context) => const HomePage(),
                  },
                  debugShowCheckedModeBanner: false);
            },
          );
        }
      },
    );
  }
}
