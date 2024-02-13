import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:tickets/config/helpers.dart';
import 'package:tickets/providers/greeting_provider.dart';
import 'package:tickets/providers/navigation_provider.dart';
import 'package:tickets/screens/app.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => GreetingProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Tickets',
        theme: ThemeData(
          primaryColor: Styles.primaryColor,
          textTheme:
              GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(),
          // useMaterial3: true,
        ),
        home: const MainScreen());
  }
}
