import 'package:flutter_test/flutter_test.dart';
import 'package:your_flutter_project/features/history/data/repositories/transaction_repository_impl.dart';

void main() {
  late TransactionRepositoryImpl repository;

  setUp(() {
    repository = TransactionRepositoryImpl();
  });

  test('Get transaction history returns a list', () async {
    final history = await repository.getTransactionHistory();
    expect(history, isA<List>());
  });
}
