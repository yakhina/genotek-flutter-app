import 'package:json_annotation/json_annotation.dart';
import 'package:genotek/utils/resources/constants.dart';
part 'genotek_dto.g.dart';

enum APIPath {
  prices,
}

extension APIPathURLPath on APIPath {
  Uri get urlPath {
    switch (this) {
      case APIPath.prices:
      default:
        return Uri.parse("${Constants.apiHost}price/");
    }
  }
}

enum HTTPMethod {
  get,
  post,
  put,
  delete;
}

@JsonSerializable()
class GenotekPackageDataDTO {
  final String name;
  final int price;
  final int startPrice;
  final int discountPrice;
  final bool discountState;

  GenotekPackageDataDTO({
    required this.name,
    required this.price,
    required this.startPrice,
    required this.discountPrice,
    required this.discountState,
  });

  factory GenotekPackageDataDTO.fromJson(Map<String, dynamic> json) =>
      _$GenotekPackageDataDTOFromJson(json);
  Map<String, dynamic> toJson() => _$GenotekPackageDataDTOToJson(this);
}

@JsonSerializable()
class GenotekItemDataDTO {
  final Map<String, GenotekPackageDataDTO>? packagesMap;

  GenotekItemDataDTO({
    this.packagesMap,
  });

  factory GenotekItemDataDTO.fromJson(Map<String, dynamic> json) =>
      _$GenotekItemDataDTOFromJson(json);
  Map<String, dynamic> toJson() => _$GenotekItemDataDTOToJson(this);
}

@JsonSerializable()
class GenotekDataDTO {
  final Map<String, GenotekItemDataDTO>? itemsMap;

  GenotekDataDTO({
    this.itemsMap,
  });

  factory GenotekDataDTO.fromJson(Map<String, dynamic> json) => _$GenotekDataDTOFromJson(json);
  Map<String, dynamic> toJson() => _$GenotekDataDTOToJson(this);
}
