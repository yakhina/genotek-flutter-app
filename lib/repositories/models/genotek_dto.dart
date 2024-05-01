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

@JsonSerializable(includeIfNull: true)
class GenotekPackagePriceDataDTO {
  final String? name;
  final int? price;
  final int? startPrice;
  final int? discountPrice;
  final bool? discountState;

  GenotekPackagePriceDataDTO({
    this.name,
    this.price,
    this.startPrice,
    this.discountPrice,
    this.discountState,
  });

  factory GenotekPackagePriceDataDTO.fromJson(Map<String, dynamic> json) =>
      _$GenotekPackagePriceDataDTOFromJson(json);
  Map<String, dynamic> toJson() => _$GenotekPackagePriceDataDTOToJson(this);
}

@JsonSerializable(includeIfNull: true)
class GenotekDataDTO {
  final Map<String, GenotekPackagePriceDataDTO>? genetics;
  final Map<String, GenotekPackagePriceDataDTO>? diagnostic;
  final Map<String, GenotekPackagePriceDataDTO>? premium;

  GenotekDataDTO({
    this.genetics,
    this.diagnostic,
    this.premium,
  });

  factory GenotekDataDTO.fromJson(Map<String, dynamic> json) => _$GenotekDataDTOFromJson(json);

  get itemsMap => null;
  Map<String, dynamic> toJson() => _$GenotekDataDTOToJson(this);
}
