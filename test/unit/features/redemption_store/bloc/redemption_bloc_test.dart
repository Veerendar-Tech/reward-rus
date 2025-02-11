import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:../features/redemption_store/bloc/redemption_bloc.dart';
import 'package:../features/redemption_store/bloc/redemption_event.dart';
import 'package:../features/redemption_store/bloc/redemption_state.dart';
import 'package:../features/redemption_store/data/repositories/redemption_repository_impl.dart';

class MockRedemptionRepository extends Mock implements RedemptionRepositoryImpl {}

void main() {
  late RedemptionBloc redemptionBloc;
  late MockRedemptionRepository mockRepository;

  setUp(() {
    mockRepository = MockRedemptionRepository();
    redemptionBloc = RedemptionBloc(repository: mockRepository);
  });

  tearDown(() {
    redemptionBloc.close();
  });

  test('Initial state is RedemptionInitial', () {
    expect(redemptionBloc.state, RedemptionInitial());
  });

  test('LoadRedemptionItems loads items', () {
    when(mockRepository.getRedemptionItems()).thenAnswer((_) async => []);
    redemptionBloc.add(LoadRedemptionItems());

    expectLater(redemptionBloc.stream, emitsInOrder([isA<RedemptionLoaded>()]));
  });
}
