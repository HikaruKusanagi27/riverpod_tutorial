import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_tutorial/home_page.dart';
import 'package:riverpod_tutorial/statefull_widget_folder/counter_statefull.page.dart';

class GoRouterPage extends StatelessWidget {
  GoRouterPage({super.key});

  final router = GoRouter(
    initialLocation: '/a',
    routes: [
      GoRoute(path: '/a', builder: (context, state) => CounterStatefullPage()),
      GoRoute(path: '/b', builder: (context, state) => RiverpodCounterPage()),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
