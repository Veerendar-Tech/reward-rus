import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:../features/history/bloc/transaction_bloc.dart';
import 'package:../features/history/bloc/transaction_event.dart';
import 'package:../features/history/bloc/transaction_state.dart';
import 'package:../features/history/data/repositories/transaction_repository_impl.dart';

class MockTransactionRepository extends Mock implements TransactionRepositoryImpl {}

void main() {
  late TransactionBloc transactionBloc;
  late MockTransactionRepository mockRepository;

  setUp(() {
    mockRepository = MockTransactionRepository();
    transactionBloc = TransactionBloc(transactionRepository: mockRepository);
  });

  tearDown(() {
    transactionBloc.close();
  });

  test('Initial state is TransactionInitial', () {
    expect(transactionBloc.state, TransactionInitial());
  });

  test('LoadTransactionHistory loads transactions', () {
    when(mockRepository.getTransactionHistory()).thenAnswer((_) async => []);
    transactionBloc.add(LoadTransactionHistory());

    expectLater(transactionBloc.stream, emitsInOrder([isA<TransactionLoaded>()]));
  });
}
