import 'package:flutter/material.dart';
import 'package:soal1_live_coding/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile: Ade Dwi Herdiansyah',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),

      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,

      home: const ProfilePage(),
    );
  }
}
