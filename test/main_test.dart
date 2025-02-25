import 'package:flutter_test/flutter_test.dart';
import 'package:../main.dart'; // Adjust according to your project structure
import 'package:flutter/material.dart';

void main() {
  group('Main App Tests', () {
    testWidgets('App starts and shows Reward Rush title', (WidgetTester tester) async {
      // Build the app and trigger a frame.
      await tester.pumpWidget(MyApp());

      // Verify that the main title appears.
      expect(find.text('Reward Rush'), findsOneWidget);

      // Verify the presence of initial widgets like buttons or cards on the home screen.
      expect(find.byType(ElevatedButton), findsWidgets);
    });

    testWidgets('Navigates to Redemption Store and displays items', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      // Tap on the navigation item to open Redemption Store
      await tester.tap(find.byIcon(Icons.store));
      await tester.pumpAndSettle(); // Wait for animations to complete

      // Verify the Redemption Store title
      expect(find.text('Redemption Store'), findsOneWidget);

      // Verify that items appear in the Redemption Store
      expect(find.text('Choose an item to redeem!'), findsOneWidget);
    });

    testWidgets('Shows the available scratch cards in horizontal list', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      // Verify scratch card prompt
      expect(find.text('Scratch to Win!'), findsWidgets);

      // Verify the list of scratch cards
      expect(find.byType(ListView), findsOneWidget);
    });
  });
}
