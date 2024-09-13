import 'package:flutter/material.dart';
import 'package:improwave/pages/home/notification_page.dart';
import 'package:improwave/pages/main_page%20copy.dart';
import 'package:improwave/pages/profile/ath_view_page.dart';
import 'package:improwave/pages/profile/edit_profile.dart';
import 'package:improwave/pages/profile/friends_page.dart';
import 'package:improwave/pages/login/login_page.dart';
import 'package:improwave/pages/login/verify_page.dart';
import 'package:improwave/pages/profile/pay_page.dart';
import 'package:improwave/pages/profile/success_pay_page.dart';
import 'package:improwave/pages/profile/tra_view_page.dart';
import 'package:improwave/themes/theme_provider.dart';
import 'package:improwave/utils/is_trainer_provider.dart';
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
        ChangeNotifierProvider(create: (context) => IsTrainerProvider()),
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
                  home: const MainPage(),
                  theme: Provider.of<ThemeProvider>(context).themeData,
                  routes: {
                    '/main': (context) => const MainPage(),
                    '/login': (context) => const LoginPage(),
                    '/verify': (context) => const VerifyPage(),
                    '/editProfile': (context) => const EditProfile(),
                    '/friends': (context) => const FriendsPage(),
                    '/traView': (context) => const TraViewPage(),
                    '/athView': (context) => const AthViewPage(),
                    '/pay': (context) => const PayPage(),
                    '/successPay': (context) => const SuccessPayPage(),
                    '/notification': (context) => const NotificationPage(),
                  },
                  debugShowCheckedModeBanner: false);
            },
          );
        }
      },
    );
  }
}
