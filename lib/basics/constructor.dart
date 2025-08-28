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
const double xOrigin = 0; // もし原点の位置を変更したくなっても変数の値を変更すれば済む
const double yOrigin = 0;

class Point {
  final double x;
  final double y; // この final がついた変数は、「一度値を設定したら変更できない」という特別な変数です。

  // そして、final な変数には重要なルールがあります：
  // コンストラクタの本体（波括弧の中）で値を代入しようとすると、エラーになる

  // だから、以下の書き方はダメです：
  // Point.origin() {
  //   this.x = xOrigin;  // エラー！finalな変数に代入できない
  //   this.y = yOrigin;  // エラー！
  // }
  //でも、コロンの後の書き方なら大丈夫です：
  // Point.origin() : x = xOrigin, y = yOrigin;  // これはOK！

  // Sets the x and y instance variables
  // before the constructor body runs.
  Point(this.x, this.y); //イ　ンスタンス 完成品

  // Named constructor　その名の通り、名前付きにすることで何をするコードなのか明確になるため、誰が読んでも分かりやすい
  Point.origin() : x = xOrigin, y = yOrigin;

  // パターン1（直接書いた場合）
  // Point.origin() : x = 0, y = 0;
}
