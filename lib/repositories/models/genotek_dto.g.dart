// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genotek_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenotekPackageDataDTO _$GenotekPackageDataDTOFromJson(
        Map<String, dynamic> json) =>
    GenotekPackageDataDTO(
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      startPrice: (json['startPrice'] as num).toInt(),
      discountPrice: (json['discountPrice'] as num).toInt(),
      discountState: json['discountState'] as bool,
    );

Map<String, dynamic> _$GenotekPackageDataDTOToJson(
        GenotekPackageDataDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'startPrice': instance.startPrice,
      'discountPrice': instance.discountPrice,
      'discountState': instance.discountState,
    };

GenotekItemDataDTO _$GenotekItemDataDTOFromJson(Map<String, dynamic> json) =>
    GenotekItemDataDTO(
      packagesMap: (json['packagesMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, GenotekPackageDataDTO.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$GenotekItemDataDTOToJson(GenotekItemDataDTO instance) =>
    <String, dynamic>{
      'packagesMap': instance.packagesMap,
    };

GenotekDataDTO _$GenotekDataDTOFromJson(Map<String, dynamic> json) =>
    GenotekDataDTO(
      itemsMap: (json['itemsMap'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, GenotekItemDataDTO.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$GenotekDataDTOToJson(GenotekDataDTO instance) =>
    <String, dynamic>{
      'itemsMap': instance.itemsMap,
    };
