import 'package:genotek/repositories/models/genotek_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:genotek/repositories/genotek_repository.dart';

void main() {
  test('Getting price data test', () async {
    GenotekRepository mockedRepository = GenotekRepository();
    GenotekDataDTO? data = await mockedRepository.dataProvider.refresh();

    expect(data, isNotNull);
  });
}
