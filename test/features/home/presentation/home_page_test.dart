import 'package:flutter_test/flutter_test.dart';
import 'package:../features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('HomePage displays coin balance and scratch card list', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    // Check if coin balance text is present
    expect(find.text('Your Coins'), findsOneWidget);

    // Check if Scratch Card list is present
    expect(find.text('Scratch to Win!'), findsWidgets);
  });
}
