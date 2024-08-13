import 'package:flutter/material.dart';
import 'package:flutter_navigation_route/pages/about_page.dart';
import 'package:flutter_navigation_route/pages/dashboard.dart';
import 'package:flutter_navigation_route/pages/home_page.dart';
import 'package:go_router/go_router.dart';
part 'routes.dart';

class RoutePages {
  static final router = GoRouter(
    routes: [
      GoRoute(
          path: Routes.home,
          name: Routes.home,
          pageBuilder: (context, state) => const MaterialPage(child: HomePage())),
      GoRoute(
          path: Routes.about,
          name: Routes.about,
          builder: (context, state)=> AboutPage(perameter: state.extra as Map ?? {})),
          // pageBuilder: (context, state) => const MaterialPage(child: AboutPage())),
      GoRoute(
          path: Routes.dashboard,
          name: Routes.dashboard,
          pageBuilder: (context, state) => const MaterialPage(child: Dashboard())),
    ],
  );
}
