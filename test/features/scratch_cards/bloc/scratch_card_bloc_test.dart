import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:../features/scratch_cards/bloc/scratch_card_bloc.dart';

void main() {
  group('ScratchCardBloc', () {
    blocTest<ScratchCardBloc, ScratchCardState>(
      'emits [ScratchCardAvailable] when LoadScratchCard is added',
      build: () => ScratchCardBloc(),
      act: (bloc) => bloc.add(LoadScratchCard()),
      expect: () => [
        ScratchCardAvailable(),
      ],
    );

    blocTest<ScratchCardBloc, ScratchCardState>(
      'emits ScratchCardRedeemed when ScratchCard is scratched',
      build: () => ScratchCardBloc(),
      act: (bloc) => bloc.add(ScratchCardRedeem(reward: 50)),
      expect: () => [
        ScratchCardRedeemed(reward: 50),
      ],
    );
  });
}
