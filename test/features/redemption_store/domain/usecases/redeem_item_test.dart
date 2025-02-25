import 'package:flutter_test/flutter_test.dart';
import 'package:../features/redemption_store/domain/usecases/redeem_item.dart';
import 'package:../features/redemption_store/data/repositories/mock_repositories.dart';

void main() {
  test('RedeemItem use case returns success when item can be redeemed', () async {
    final useCase = RedeemItem(MockRedemptionRepository());
    final result = await useCase.execute(item);

    expect(result, equals(RedemptionResult.success));
  });

  test('RedeemItem use case returns failure when item cannot be redeemed', () async {
    final useCase = RedeemItem(MockRedemptionRepository(failRedemption: true));
    final result = await useCase.execute(item);

    expect(result, equals(RedemptionResult.failure));
  });
}
