import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/nav_bar.dart';
import 'package:improwave/pages/search_page.dart';
import 'package:improwave/pages/home_page.dart';
import 'package:improwave/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  // page index
  int selectedIndex = 0;

  // page list for nav bar
  final List pagesList = [
    const HomePage(),
    const SearchPage(),
    const ProfilePage(),
  ];

  // Handle index change from NavBar
  void handleIndexChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_rounded,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          pagesList[selectedIndex],
        ],
      ),
      // NavigationBar
      bottomNavigationBar: NavBar(
        selectedIndex: selectedIndex,
        onTabChange: handleIndexChange, // Pass the callback function
      ),
    );
  }
}
