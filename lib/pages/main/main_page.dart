import 'package:flutter/material.dart';
import 'package:improwave/components/bars/nav_bar.dart';
import 'package:improwave/pages/main/home_page.dart';
import 'package:improwave/pages/profile/tra_profile_page.dart';
import 'package:improwave/pages/main/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 2;

  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const TraProfilePage(),
  ];

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onTabChange: _onTabChange,
      ),
    );
  }
}
