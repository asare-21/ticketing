import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/widgets/greeting_widget.dart';
import 'package:tickets/widgets/upcoming_flights.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [Gap(30), GreetingWidget(), UpcomingFlightsWidgets()],
    );
  }
}
