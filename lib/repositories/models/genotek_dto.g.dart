// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genotek_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenotekPackagePriceDataDTO _$GenotekPackagePriceDataDTOFromJson(
        Map<String, dynamic> json) =>
    GenotekPackagePriceDataDTO(
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      startPrice: (json['startPrice'] as num?)?.toInt(),
      discountPrice: (json['discountPrice'] as num?)?.toInt(),
      discountState: json['discountState'] as bool?,
    );

Map<String, dynamic> _$GenotekPackagePriceDataDTOToJson(
        GenotekPackagePriceDataDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'startPrice': instance.startPrice,
      'discountPrice': instance.discountPrice,
      'discountState': instance.discountState,
    };

GenotekDataDTO _$GenotekDataDTOFromJson(Map<String, dynamic> json) =>
    GenotekDataDTO(
      genetics: (json['genetics'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, GenotekPackagePriceDataDTO.fromJson(e as Map<String, dynamic>)),
      ),
      diagnostic: (json['diagnostic'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, GenotekPackagePriceDataDTO.fromJson(e as Map<String, dynamic>)),
      ),
      premium: (json['premium'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, GenotekPackagePriceDataDTO.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$GenotekDataDTOToJson(GenotekDataDTO instance) =>
    <String, dynamic>{
      'genetics': instance.genetics,
      'diagnostic': instance.diagnostic,
      'premium': instance.premium,
    };
