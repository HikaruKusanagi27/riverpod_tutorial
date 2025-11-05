import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_tutorial/home_page.dart';
import 'package:riverpod_tutorial/statefull_widget_folder/counter_statefull.page.dart';

// class RouterPage extends StatelessWidget {
//   RouterPage({super.key});

//   final router = GoRouter(
//     // ←これがインスタンス変数
//     initialLocation: '/a',
//     routes: [
//       GoRoute(path: '/a', builder: (context, state) => HomePage()),
//       GoRoute(
//         path: '/CounterStatefullPage',
//         builder: (context, state) => const CounterStatefullPage(),
//       ),
//     ],
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routeInformationProvider: router.routeInformationProvider,
//       routeInformationParser: router.routeInformationParser,
//       routerDelegate: router.routerDelegate,
//     );
//   }
// }

// @TypedGoRoute<CounterStatefullRoute>(path: '/counter')
// class CounterStatefullRo
