// main.dart
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const CulturalHouseApp());
}

class CulturalHouseApp extends StatelessWidget {
  const CulturalHouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cultural House of Sumatra',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 16.0, color: Colors.black54),
        ),
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}