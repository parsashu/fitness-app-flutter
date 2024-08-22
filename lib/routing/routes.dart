import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:improwave/pages/search_page.dart';
import 'package:improwave/pages/home_page.dart';
import 'package:improwave/introduction/pages.dart';
import 'package:improwave/pages/profile_page.dart';

class MyRoutes extends StatelessWidget {
  final bool introSeen;
  const MyRoutes({super.key, required this.introSeen});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: introSeen ? '/home' : '/intro',
      routes: [
        GoRoute(
          path: '/intro',
          builder: (context, state) => const IntroPages(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/chat',
          builder: (context, state) => const SearchPage(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const ProfilePage(),
        ),
      ],
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
