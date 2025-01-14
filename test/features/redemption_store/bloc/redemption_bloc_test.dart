import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:../features/redemption_store/bloc/redemption_bloc.dart';

void main() {
  group('RedemptionBloc', () {
    blocTest<RedemptionBloc, RedemptionState>(
      'emits [RedemptionLoading, RedemptionLoaded] when LoadRedemptionItems is added',
      build: () => RedemptionBloc(),
      act: (bloc) => bloc.add(LoadRedemptionItems()),
      expect: () => [
        RedemptionLoading(),
        RedemptionLoaded(items: [/* sample items here */]),
      ],
    );

    blocTest<RedemptionBloc, RedemptionState>(
      'emits RedemptionSuccess when RedeemItem is successful',
      build: () => RedemptionBloc(),
      act: (bloc) => bloc.add(RedeemItem(item)),
      expect: () => [
        RedemptionSuccess(),
      ],
    );
  });
}
