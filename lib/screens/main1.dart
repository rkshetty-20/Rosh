import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(const Main1Screen());
}

class Main1Screen extends StatelessWidget {
  const Main1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
