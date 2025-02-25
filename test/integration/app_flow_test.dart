import 'package:flutter_test/flutter_test.dart';
import 'package:../main.dart';

void main() {
  testWidgets('App launches and navigates to redemption store', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Reward Rush'), findsOneWidget);
    await tester.tap(find.text('Redemption Store'));
    await tester.pumpAndSettle();

    expect(find.text('Choose an item to redeem!'), findsOneWidget);
  });
}
