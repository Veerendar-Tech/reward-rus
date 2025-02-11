import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:../features/redemption_store/widgets/redemption_item_widget.dart';
import 'package:../features/redemption_store/domain/entities/redemption_item.dart';

void main() {
  testWidgets('RedemptionItemWidget shows item name and cost', (WidgetTester tester) async {
    final item = RedemptionItem(name: 'Test Item', cost: 100);

    await tester.pumpWidget(MaterialApp(home: RedemptionItemWidget(item: item)));

    expect(find.text('Test Item'), findsOneWidget);
    expect(find.text('Cost: 100 coins'), findsOneWidget);
  });
}
