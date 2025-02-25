import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:../features/home/widgets/scratch_card_widget.dart';

void main() {
  testWidgets('ScratchCardWidget shows scratch prompt initially', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ScratchCardWidget(index: 0, reward: 100)));

    expect(find.text('Scratch!'), findsOneWidget);
  });
}
