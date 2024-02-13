import 'package:flutter/material.dart';
import 'package:tickets/screens/home_screen.dart';
import 'package:tickets/screens/profile_screen.dart';
import 'package:tickets/screens/search_screen.dart';
import 'package:tickets/screens/tickets_screen.dart';

class NavigationProvider with ChangeNotifier {
  // final PageController controller = PageController();
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  int get currentIndex => _currentIndex;

  List<Widget> get screens => _screens;

  void updateIndex(int index) {
    _currentIndex = index;

    notifyListeners();
  }

  // animate to page
  void animateToPage(int index) {
    // controller.jumpToPage(index);
    updateIndex(index);
  }
}
