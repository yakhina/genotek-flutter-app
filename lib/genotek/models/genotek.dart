import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:genotek/repositories/models/models.dart';

part 'genotek.g.dart';

@JsonSerializable()
class GenotekPackageData extends Equatable {
  const GenotekPackageData({
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

  static const defaultGenotekData = GenotekPackageData(
    name: null,
    price: null,
    startPrice: null,
    discountPrice: null,
    discountState: null,
  );

  factory GenotekPackageData.fromRepository(GenotekPackageDataDTO genotekPackageDataDTO) {
    return GenotekPackageData(
      name: genotekPackageDataDTO.name,
      price: genotekPackageDataDTO.price,
      startPrice: genotekPackageDataDTO.startPrice,
      discountPrice: genotekPackageDataDTO.discountPrice,
      discountState: genotekPackageDataDTO.discountState,
    );
  }

  factory GenotekPackageData.fromJson(Map<String, dynamic> json) =>
      _$GenotekPackageDataFromJson(json);
  Map<String, dynamic> toJson() => _$GenotekPackageDataToJson(this);

  @override
  List<Object?> get props => [name, price, startPrice, discountPrice, discountState];
}

@JsonSerializable()
class GenotekItemData extends Equatable {
  const GenotekItemData({
    this.packagesMap,
  });

  final Map<String, GenotekPackageData>? packagesMap;

  static const defaultGenotekData = GenotekItemData(packagesMap: null);

  factory GenotekItemData.fromRepository(GenotekItemDataDTO genotekItemDataDTO) {
    return GenotekItemData(
        packagesMap: genotekItemDataDTO.packagesMap
            ?.map((key, value) => MapEntry(key, GenotekPackageData.fromRepository(value))));
  }

  factory GenotekItemData.fromJson(Map<String, dynamic> json) => _$GenotekItemDataFromJson(json);
  Map<String, dynamic> toJson() => _$GenotekItemDataToJson(this);

  @override
  List<Object?> get props => [packagesMap];
}

@JsonSerializable()
class GenotekData extends Equatable {
  const GenotekData({
    this.itemsMap,
  });

  final Map<String, GenotekItemData>? itemsMap;

  static const defaultGenotekData = GenotekData(itemsMap: null);

  factory GenotekData.fromRepository(GenotekDataDTO genotekDataDTO) {
    return GenotekData(
        itemsMap: genotekDataDTO.itemsMap
            ?.map((key, value) => MapEntry(key, GenotekItemData.fromRepository(value))));
  }

  factory GenotekData.fromJson(Map<String, dynamic> json) => _$GenotekDataFromJson(json);
  Map<String, dynamic> toJson() => _$GenotekDataToJson(this);

  @override
  List<Object?> get props => [itemsMap];
}
