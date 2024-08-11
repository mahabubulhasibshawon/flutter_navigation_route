import 'package:flutter/material.dart';
import '../pages/about_page.dart';
import '../pages/dashboard.dart';
import '../pages/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const HomePage(),
        '/about' :  (context) => const AboutPage(),
        '/dashboard' : (context) => const Dashboard(),
      },
      initialRoute: '/',
    );
  }
}

