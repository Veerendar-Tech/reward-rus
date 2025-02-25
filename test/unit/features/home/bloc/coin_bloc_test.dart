import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:../features/home/bloc/coin_bloc.dart';
import 'package:../features/home/bloc/coin_event.dart';
import 'package:../features/home/bloc/coin_state.dart';
import 'package:../features/home/data/repositories/coin_repository_impl.dart';

class MockCoinRepository extends Mock implements CoinRepositoryImpl {}

void main() {
  late CoinBloc coinBloc;
  late MockCoinRepository mockRepository;

  setUp(() {
    mockRepository = MockCoinRepository();
    coinBloc = CoinBloc(repository: mockRepository);
  });

  tearDown(() {
    coinBloc.close();
  });

  test('Initial state is CoinInitial', () {
    expect(coinBloc.state, CoinInitial());
  });

  test('LoadInitialCoins event fetches initial coins', () {
    when(mockRepository.getCoins()).thenAnswer((_) async => 100);
    coinBloc.add(LoadInitialCoins());

    expectLater(coinBloc.stream, emitsInOrder([isA<CoinLoaded>()]));
  });
}
