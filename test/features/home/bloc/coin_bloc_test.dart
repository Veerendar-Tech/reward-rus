import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:../features/home/bloc/coin_bloc.dart';

void main() {
  group('CoinBloc', () {
    blocTest<CoinBloc, CoinState>(
      'emits [CoinLoading, CoinLoaded] when LoadInitialCoins is added',
      build: () => CoinBloc(),
      act: (bloc) => bloc.add(LoadInitialCoins()),
      expect: () => [
        CoinLoading(),
        CoinLoaded(coins: 100) // Assuming 100 is the initial load balance
      ],
    );

    blocTest<CoinBloc, CoinState>(
      'updates coin balance when AddCoins event is added',
      build: () => CoinBloc(),
      seed: () => CoinLoaded(coins: 100),
      act: (bloc) => bloc.add(AddCoins(50)),
      expect: () => [
        CoinLoaded(coins: 150),
      ],
    );
  });
}
