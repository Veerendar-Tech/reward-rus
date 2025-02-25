import 'package:flutter_test/flutter_test.dart';
import 'package:../features/home/data/repositories/coin_repository_impl.dart';

void main() {
  late CoinRepositoryImpl repository;

  setUp(() {
    repository = CoinRepositoryImpl();
  });

  test('Get coins returns correct value', () async {
    final coins = await repository.getCoins();
    expect(coins, isA<int>());
  });

  test('Update coins adds correctly', () async {
    await repository.updateCoins(50);
    final updatedCoins = await repository.getCoins();
    expect(updatedCoins, greaterThan(0));
  });
}
