import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:genotek/repositories/models/models.dart';

part 'genotek.g.dart';

@JsonSerializable()
class GenotekPackagePriceData extends Equatable {
  const GenotekPackagePriceData({
    required this.name,
    required this.price,
    required this.startPrice,
    required this.discountPrice,
    required this.discountState,
  });

  final String? name;
  final int? price;
  final int? startPrice;
  final int? discountPrice;
  final bool? discountState;

  static const defaultGenotekData = GenotekPackagePriceData(
    name: null,
    price: null,
    startPrice: null,
    discountPrice: null,
    discountState: null,
  );

  factory GenotekPackagePriceData.fromRepository(GenotekPackagePriceDataDTO genotekPackageDataDTO) {
    return GenotekPackagePriceData(
      name: genotekPackageDataDTO.name,
      price: genotekPackageDataDTO.price,
      startPrice: genotekPackageDataDTO.startPrice,
      discountPrice: genotekPackageDataDTO.discountPrice,
      discountState: genotekPackageDataDTO.discountState,
    );
  }

  factory GenotekPackagePriceData.fromJson(Map<String, dynamic> json) =>
      _$GenotekPackagePriceDataFromJson(json);
  Map<String, dynamic> toJson() => _$GenotekPackagePriceDataToJson(this);

  @override
  List<Object?> get props => [name, price, startPrice, discountPrice, discountState];
}

@JsonSerializable()
class GenotekData extends Equatable {
  const GenotekData({
    this.genetics,
    this.premium,
    this.diagnostic,
  });

  final Map<String, GenotekPackagePriceData>? genetics;
  final Map<String, GenotekPackagePriceData>? premium;
  final Map<String, GenotekPackagePriceData>? diagnostic;

  static const defaultGenotekData = GenotekData(genetics: null, premium: null, diagnostic: null);

  factory GenotekData.fromRepository(GenotekDataDTO genotekDataDTO) {
    debugPrint("GenotekData fromRepository genotekDataDTO: ${genotekDataDTO.genetics}");
    debugPrint("GenotekData fromRepository genotekDataDTO: ${genotekDataDTO.premium}");
    debugPrint("GenotekData fromRepository genotekDataDTO: ${genotekDataDTO.diagnostic}");
    return GenotekData(
        genetics: genotekDataDTO.genetics
            ?.map((key, value) => MapEntry(key, GenotekPackagePriceData.fromRepository(value))),
        premium: genotekDataDTO.premium
            ?.map((key, value) => MapEntry(key, GenotekPackagePriceData.fromRepository(value))),
        diagnostic: genotekDataDTO.diagnostic
            ?.map((key, value) => MapEntry(key, GenotekPackagePriceData.fromRepository(value))));
  }

  factory GenotekData.fromJson(Map<String, dynamic> json) => _$GenotekDataFromJson(json);
  Map<String, dynamic> toJson() => _$GenotekDataToJson(this);

  @override
  List<Object?> get props => [genetics, premium, diagnostic];
}
