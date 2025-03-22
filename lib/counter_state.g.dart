// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CounterStateImpl _$$CounterStateImplFromJson(Map<String, dynamic> json) =>
    _$CounterStateImpl(
      count: (json['count'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
    );

Map<String, dynamic> _$$CounterStateImplToJson(_$CounterStateImpl instance) =>
    <String, dynamic>{'count': instance.count, 'message': instance.message};
