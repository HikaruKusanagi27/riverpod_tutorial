/// 例：　希望する対応アクションenum（固定値）
enum DesiredActionType {
  exchange('exchange', '交換'),
  refund('refund', '返金'),
  backOrder('back_order', '取り寄せ'),
  returnItem('return', '返品');

  const DesiredActionType(this.code, this.label);
  final String code;
  final String label;
}
