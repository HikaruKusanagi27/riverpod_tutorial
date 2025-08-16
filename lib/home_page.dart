import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/model/counter_state.dart';
import 'package:riverpod_tutorial/router/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home画面'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              const CounterStatefullRoute().push(context);
            },
            child: const Text('CounterStatefullPage'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RiverpodCounterPage()),
              );
            },
            child: const Text('RiverpodCounterPage'),
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
