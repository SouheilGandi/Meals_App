import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals/navigation/tabs_screen.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 33, 160, 26),
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: theme, home: const TabsScreen());
  }
}
