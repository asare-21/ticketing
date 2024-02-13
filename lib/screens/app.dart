import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tickets/providers/navigation_provider.dart';
import 'package:tickets/widgets/bottom_navigation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NavigationProvider>(
          builder: (context, value, child) => PageView.builder(
                itemBuilder: (context, index) => value.screens[index],
                itemCount: value.screens.length,
                controller: value.controller,
                onPageChanged: (index) => value.animateToPage(index),
              )),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
