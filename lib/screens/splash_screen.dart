import 'dart:async';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context,'/login');
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
            child: Image.asset(
              'assets/INST.jpg.',
              width: 100,
              height: 100,
            ),
          ),
          const Spacer(),
          const Text("from", style: TextStyle(color: Colors.grey)),
          Image.asset(
            'assets/metalogo1[2].png', // optional
            width: 70,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
