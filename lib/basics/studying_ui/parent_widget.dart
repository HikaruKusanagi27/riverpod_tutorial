// フロントエンドのコンポーネント設計に立ち向かう
// https://qiita.com/seya/items/8814e905693f00cdade2#%E3%82%B9%E3%82%BF%E3%82%A4%E3%83%AB%E3%82%AF%E3%83%AD%E3%83%BC%E3%82%BA%E3%83%89%E3%81%AE%E5%8E%9F%E5%89%87

import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/basics/studying_ui/child_widget.dart';

class ParentWidget extends StatelessWidget {
  const ParentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              '親Widget画面',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ChildWidget(),
          ],
        ),
      ),
    );
  }
}
