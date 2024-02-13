import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tickets/providers/navigation_provider.dart';
import 'package:tickets/screens/home.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => NavigationProvider(),)],
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tickets',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}
