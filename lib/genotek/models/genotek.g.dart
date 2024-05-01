// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genotek.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenotekPackageData _$GenotekPackageDataFromJson(Map<String, dynamic> json) =>
    GenotekPackageData(
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      startPrice: (json['startPrice'] as num?)?.toInt(),
      discountPrice: (json['discountPrice'] as num?)?.toInt(),
      discountState: json['discountState'] as bool?,
    );

Map<String, dynamic> _$GenotekPackageDataToJson(GenotekPackageData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'startPrice': instance.startPrice,
      'discountPrice': instance.discountPrice,
      'discountState': instance.discountState,
    };

GenotekItemData _$GenotekItemDataFromJson(Map<String, dynamic> json) =>
    GenotekItemData(
      packagesMap: (json['packagesMap'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, GenotekPackageData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$GenotekItemDataToJson(GenotekItemData instance) =>
    <String, dynamic>{
      'packagesMap': instance.packagesMap,
    };

GenotekData _$GenotekDataFromJson(Map<String, dynamic> json) => GenotekData(
      itemsMap: (json['itemsMap'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, GenotekItemData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$GenotekDataToJson(GenotekData instance) =>
    <String, dynamic>{
      'itemsMap': instance.itemsMap,
    };
