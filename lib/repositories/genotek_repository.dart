import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:genotek/data_providers/genotek_data_provider.dart';
import 'package:genotek/genotek/models/genotek.dart';
import 'package:genotek/repositories/models/genotek_dto.dart';

class GenotekRepository {
  GenotekRepository();

  GenotekDataProvider dataProvider = GenotekDataProvider();

  Future<GenotekData?> refresh() async {
    GenotekDataDTO? data = await dataProvider.refresh();
    debugPrint("dataProvider GenotekDataDTO genetics ${data?.genetics}");
    debugPrint("dataProvider GenotekDataDTO premium ${data?.premium}");
    debugPrint("dataProvider GenotekDataDTO diagnostic ${data?.diagnostic}");
    if (data != null) {
      return GenotekData.fromRepository(data);
    } else {
      return null;
    }
  }
}
