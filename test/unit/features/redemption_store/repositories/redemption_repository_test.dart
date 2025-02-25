import 'package:flutter_test/flutter_test.dart';
import 'package:../features/redemption_store/data/repositories/redemption_repository_impl.dart';

void main() {
  late RedemptionRepositoryImpl repository;

  setUp(() {
    repository = RedemptionRepositoryImpl();
  });

  test('Get redemption items returns a list', () async {
    final items = await repository.getRedemptionItems();
    expect(items, isA<List>());
  });
}
