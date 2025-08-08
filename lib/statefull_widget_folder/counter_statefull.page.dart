import 'package:flutter/material.dart';

class CounterStatefullPage extends StatefulWidget {
  const CounterStatefullPage({super.key});

  @override
  State<CounterStatefullPage> createState() => _CounterStatefullPageState();
}

class _CounterStatefullPageState extends State<CounterStatefullPage> {
  int count = 0;
  Color backgroundColor = Colors.red;

  void increment() {
    setState(() {
      count++;
    });
  }

  void changeColor() {
    setState(() {
      backgroundColor =
          backgroundColor == Colors.red ? Colors.blue : Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CounterStatefullPage')),
      body: Center(
        child: Column(
          children: [
            Text('ボタンを押した回数:'),
            Text('$count'),
            ElevatedButton(onPressed: increment, child: Text('カウントアップ')),
            Container(),
          ],
        ),
      ),
    );
  }
}
