import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:../features/scratch_cards/presentation/widgets/scratch_card_widget.dart';

void main() {
  testWidgets('ScratchCardWidget displays scratch message and handles scratching', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ScratchCardWidget(index: 0, isScratched: false, reward: 0),
    ));

    expect(find.text('Scratch to Win!'), findsOneWidget);

    await tester.tap(find.text('Scratch to Win!'));
    await tester.pump();

    expect(find.textContaining('Reward:'), findsOneWidget);
  });
}
