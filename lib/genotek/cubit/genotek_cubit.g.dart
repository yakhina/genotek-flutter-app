// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genotek_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenotekState _$GenotekStateFromJson(Map<String, dynamic> json) => GenotekState(
      status: $enumDecodeNullable(_$GenotekStatusEnumMap, json['status']) ??
          GenotekStatus.initial,
      genotekData: json['genotekData'] == null
          ? null
          : GenotekData.fromJson(json['genotekData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenotekStateToJson(GenotekState instance) =>
    <String, dynamic>{
      'status': _$GenotekStatusEnumMap[instance.status]!,
      'genotekData': instance.genotekData,
    };

const _$GenotekStatusEnumMap = {
  GenotekStatus.initial: 'initial',
  GenotekStatus.loading: 'loading',
  GenotekStatus.dataReady: 'dataReady',
  GenotekStatus.failure: 'failure',
};
