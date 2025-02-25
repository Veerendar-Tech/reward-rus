import 'package:../features/redemption_store/data/repositories/redemption_repository.dart';

class MockRedemptionRepository implements RedemptionRepository {
  @override
  Future<List<RedemptionItem>> loadItems() async {
    return [
      RedemptionItem(name: 'Gift Card', cost: 100),
      RedemptionItem(name: 'Discount Coupon', cost: 50),
    ];
  }

  @override
  Future<bool> redeemItem(RedemptionItem item) async {
    return true; // Simulate successful redemption
  }
}
