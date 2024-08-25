import 'package:flutter/material.dart';
import 'package:improwave/pages/home_page.dart';
import 'package:improwave/pages/profile_page.dart';
import 'package:improwave/pages/search_page.dart';

class NavProvider with ChangeNotifier {
  // Initial page index
  int _selectedIndex = 0;

  // List of pages
  final List<Widget> _pagesList = [
    const HomePage(),
    const SearchPage(),
    const ProfilePage(),
  ];

  // Getter for selectedIndex
  int get selectedIndex => _selectedIndex;

  // Getter for the current page
  Widget get currentPage => _pagesList[_selectedIndex];

  // Method to update the selected index
  void setIndex(int index) {
    if (index != _selectedIndex) {
      _selectedIndex = index;
      notifyListeners();
    }
  }
}
