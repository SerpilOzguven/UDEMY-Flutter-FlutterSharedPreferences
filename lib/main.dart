import 'package:flutter/material.dart';
import 'package:flutter_shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Packages',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: const SharedPreferencesPage(),
    );
  }
}

