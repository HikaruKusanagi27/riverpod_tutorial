import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_tutorial/home_page.dart';
import 'package:riverpod_tutorial/statefull_widget_folder/counter_statefull.page.dart';

void main() {
  runApp(
    // Riverpodを使用するためにProviderScopeでアプリをラップします
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final router = GoRouter(
    initialLocation: '/a',
    routes: [
      GoRoute(path: '/a', builder: (context, state) => HomePage()),
      GoRoute(path: '/b', builder: (context, state) => CounterStatefullPage()),
      GoRoute(path: '/c', builder: (context, state) => RiverpodCounterPage()),
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
