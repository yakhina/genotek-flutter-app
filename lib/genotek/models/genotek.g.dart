// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genotek.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenotekPackagePriceData _$GenotekPackagePriceDataFromJson(
        Map<String, dynamic> json) =>
    GenotekPackagePriceData(
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      startPrice: (json['startPrice'] as num?)?.toInt(),
      discountPrice: (json['discountPrice'] as num?)?.toInt(),
      discountState: json['discountState'] as bool?,
    );

Map<String, dynamic> _$GenotekPackagePriceDataToJson(
        GenotekPackagePriceData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'startPrice': instance.startPrice,
      'discountPrice': instance.discountPrice,
      'discountState': instance.discountState,
    };

GenotekData _$GenotekDataFromJson(Map<String, dynamic> json) => GenotekData(
      genetics: (json['genetics'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, GenotekPackagePriceData.fromJson(e as Map<String, dynamic>)),
      ),
      premium: (json['premium'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, GenotekPackagePriceData.fromJson(e as Map<String, dynamic>)),
      ),
      diagnostic: (json['diagnostic'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, GenotekPackagePriceData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$GenotekDataToJson(GenotekData instance) =>
    <String, dynamic>{
      'genetics': instance.genetics,
      'premium': instance.premium,
      'diagnostic': instance.diagnostic,
    };
