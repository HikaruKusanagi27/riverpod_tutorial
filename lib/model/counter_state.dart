import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../counter_state.freezed.dart';
part '../counter_state.g.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    @Default(0) int count,
    @Default('') String message,
  }) = _CounterState;

  factory CounterState.fromJson(Map<String, dynamic> json) =>
      _$CounterStateFromJson(json);
}

// 状態を操作するクラス
class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier() : super(const CounterState());

  void increment() {
    state = state.copyWith(
      count: state.count + 1,
      message: "カウントが増えました: ${state.count + 1}",
    );
  }

  void resetMessage() {
    state = state.copyWith(message: '');
  }
}
