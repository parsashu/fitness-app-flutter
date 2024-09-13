import 'package:flutter/material.dart';
import 'package:improwave/components/bars/nav_bar.dart';
import 'package:improwave/pages/home/home_page.dart';
import 'package:improwave/pages/search_page.dart';
import 'package:improwave/pages/profile/Ath_profile_page.dart';
import 'package:improwave/pages/profile/tra_profile_page.dart';
import 'package:improwave/utils/is_trainer_provider.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // Default page
  int _selectedIndex = 0;

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isTrainer = Provider.of<IsTrainerProvider>(context).isTrainer;

    // Pages
    final List<Widget> pages = [
      const HomePage(),
      const SearchPage(),
      isTrainer ? const TraProfilePage() : const AthProfilePage()
    ];

    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onTabChange: _onTabChange,
      ),
    );
  }
}
