import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:improwave/components/nav_bar.dart';
import 'package:improwave/pages/chat_page.dart';
import 'package:improwave/pages/home_page.dart';
import 'package:improwave/pages/profile_page.dart';
import 'package:improwave/pages/settings_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  // page index
  int selectedIndex = 0;

  // page list for nav bar
  final List pagesList = [
    const HomePage(),
    const ChatPage(),
    const ProfilePage(),
    const SettingsPage(),
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
        title: const Text('Improwave'),
        actions: [
          IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout))
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
