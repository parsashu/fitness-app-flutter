import 'package:flutter/material.dart';
import 'package:improwave/pages/edit_profile.dart';
import 'package:improwave/pages/login_page.dart';
import 'package:improwave/pages/main_page.dart';
import 'package:improwave/pages/verify_page.dart';
import 'package:improwave/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    MultiProvider(
      providers: [
        // Theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
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
                  home: const VerifyPage(),
                  theme: Provider.of<ThemeProvider>(context).themeData,
                  routes: {
                    
                    '/main': (context) => const MainPage(),
                    '/login': (context) => const LoginPage(),
                    '/verify': (context) => const VerifyPage(),
                    '/editProfile': (context) => const EditProfile(),
                  },
                  debugShowCheckedModeBanner: false);
            },
          );
        }
      },
    );
  }
}
