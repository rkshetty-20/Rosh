import 'package:flutter/material.dart';
import 'screens/main1.dart';
import 'screens/main2.dart';
import 'screens/main3.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi-Screen App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Starting screen
      routes: {
        '/main1': (context) => Main1Screen(),
        '/main2': (context) => Main2Screen(),
        '/main3': (context) => Main3Screen(),
        '/splash': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: ListView(
        children: [
          ListTile(
            title: Text("Go to Main1"),
            onTap: () => Navigator.pushNamed(context, '/main1'),
          ),
          ListTile(
            title: Text("Go to Main2"),
            onTap: () => Navigator.pushNamed(context, '/main2'),
          ),
          ListTile(
            title: Text("Go to Main3"),
            onTap: () => Navigator.pushNamed(context, '/main3'),
          ),
          ListTile(
            title: Text("Go to Splash Screen"),
            onTap: () => Navigator.pushNamed(context, '/splash'),
          ),
          ListTile(
            title: Text("Go to Login Screen"),
            onTap: () => Navigator.pushNamed(context, '/login'),
          ),
        ],
      ),
    );
  }
}