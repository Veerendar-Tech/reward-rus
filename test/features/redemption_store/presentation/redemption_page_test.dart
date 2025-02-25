import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:../features/redemption_store/presentation/pages/redemption_store_page.dart';

void main() {
  testWidgets('RedemptionStorePage displays available items', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: RedemptionStorePage()));

    expect(find.text('Redemption Store'), findsOneWidget);
    expect(find.text('Choose an item to redeem!'), findsOneWidget);
  });
}
