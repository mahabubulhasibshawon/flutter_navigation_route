import 'package:flutter/material.dart';

// import 'dashboard.dart';


class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        titleTextStyle: const TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/dashboard');
                },
                child: const Text('Dashboard')),
          ],
        ),
      ),
    );
  }
}
