import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../routes/route_pages.dart';

class PageHolder extends StatelessWidget {
  const PageHolder({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index){
          switch(index){
            case 0:
              context.goNamed(Routes.dashboard);
              break;
            case 1:
              context.goNamed(Routes.home);
              break;
            case 2:
              context.goNamed(Routes.about);
              break;
            default:
              context.goNamed(Routes.home);
          }
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.dashboard), label: ''),
          NavigationDestination(icon: Icon(Icons.home), label: ''),
          NavigationDestination(icon: Icon(Icons.info), label: ''),
        ],),
    );
  }
}
