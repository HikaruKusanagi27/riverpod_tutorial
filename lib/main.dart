import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/go_router_folder/go_router_page.dart';
import 'package:riverpod_tutorial/statefull_widget_folder/counter_statefull.page.dart';
import 'counter_state.dart';

void main() {
  runApp(
    // Riverpodを使用するためにProviderScopeでアプリをラップします
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Tutorial',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpodカウンターアプリ'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CounterStatefullPage(),
                ),
              );
            },
            child: const Text('CounterStatefullPage'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RiverpodCounterPage(),
                ),
              );
            },
            child: const Text('RiverpodCounterPage'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GoRouterPage()),
              );
            },
            child: const Text('GoRoterPage'),
          ),
        ],
      ),
    );
  }
}

// プロバイダーを作成
final counterProvider = StateNotifierProvider<CounterNotifier, CounterState>((
  ref,
) {
  return CounterNotifier();
});

// Riverpodを使用したカウンターウィジェット
class RiverpodCounterPage extends ConsumerWidget {
  const RiverpodCounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(counterProvider);
    final notifier = ref.read(counterProvider.notifier);

    // // 状態変化を監視
    // ref.listen<CounterState>(counterProvider, (previous, next) {
    //   if (next.message.isNotEmpty) {
    //     ScaffoldMessenger.of(
    //       context,
    //     ).showSnackBar(SnackBar(content: Text(next.message)));
    //     // メッセージをリセット
    //     notifier.resetMessage();
    //   }
    // });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpodカウンターアプリ'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('ボタンを押した回数:'),
            Text(
              '${state.count}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => notifier.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
