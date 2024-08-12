import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/route_pages.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        titleTextStyle: const TextStyle(
            color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.popUntil(context, ModalRoute.withName('/'));
                  context.goNamed(Routes.home);
                },
                child: const Text('pop untill')),
          ],
        ),
      ),
    );
  }
}
