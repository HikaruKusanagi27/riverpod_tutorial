import 'package:flutter/material.dart';

// zennの記事にて名前付きコンストラクタを学ぶ
// https://zenn.dev/zawa_kyo/articles/afd1760c08f233
// 公式ドキュメントhttps://dart.dev/language/constructors#named-constructors

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// 公式サンプル
const double xOrigin = 0;
const double yOrigin = 0;

class Point {
  final double x;
  final double y;

  // Sets the x and y instance variables
  // before the constructor body runs.
  Point(this.x, this.y); //イ　ンスタンス 完成品

  // Named constructor
  Point.origin() : x = xOrigin, y = yOrigin;
}

const double test1 = 0;
const double test2 = 0;

class Test {
  final double x;
  final double y;

  // Sets the x and y instance variables
  // before the constructor body runs.
  Test(this.x, this.y); //イ　ンスタンス 完成品

  // Named constructor
  Test.note() : x = test1, y = test2;
}
