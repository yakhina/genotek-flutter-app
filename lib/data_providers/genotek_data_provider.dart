import 'dart:core';
import 'package:genotek/repositories/models/genotek_dto.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class GenotekDataProvider {
  GenotekDataProvider();

  final dio = Dio();

  Future<GenotekDataDTO?> refresh() async {
    return await getPrices();
  }

  Future<GenotekDataDTO?> getPrices() async {
    Response<dynamic> responseData = await requestWithData(
        apiPathURL: APIPath.prices, httpMethod: HTTPMethod.get, requestParamsData: {});

    if (responseData.statusCode == 200 && responseData.data != null) {
      debugPrint('Genotek: get prices responseData statusCode ${responseData.statusCode}');
      debugPrint('Genotek: get prices responseData data ${responseData.data}');
      GenotekDataDTO parsedData = GenotekDataDTO.fromJson(responseData.data);
      return parsedData;
    } else {
      debugPrint('Genotek: get prices statusCode ${responseData.statusCode}');
      return null;
    }
  }

  Future<Response<dynamic>> requestWithData(
      {APIPath apiPathURL = APIPath.prices,
      HTTPMethod httpMethod = HTTPMethod.get,
      bool needsAuthorization = false,
      Map<String, dynamic>? requestParamsData}) async {
    debugPrint('Genotek: requestParamsData $requestParamsData');
    debugPrint('Genotek: request ${apiPathURL.urlPath.toString()}');

    Map<String, dynamic> headers = <String, dynamic>{
      "Content-type":
          httpMethod == HTTPMethod.put ? "application/x-www-form-urlencoded" : "application/json",
      "Accept": "application/json"
    };

    Options options = Options(
        method: httpMethod.name.toUpperCase(),
        headers: headers,
        responseType: ResponseType.json,
        validateStatus: (status) {
          return status! < 500;
        });

    debugPrint('Genotek: requestParamsData httpMethod options ${options.method}');
    debugPrint('Genotek: requestParamsData data ${requestParamsData.toString()}');
    return await dio.requestUri(apiPathURL.urlPath, options: options, data: requestParamsData);
  }
}
