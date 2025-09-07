/// 例：　希望する対応アクションenum（固定値）
enum DesiredActionType {
  exchange('exchange', '応募済み'),
  refund('refund', '抽選結果'); //enumの値名変更

  const DesiredActionType(this.label, this.name);

  final String label;
  final String name;
}
