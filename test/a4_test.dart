// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:desafio_a1/desafio_a4.dart';

void main() {
  testWidgets('Application smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    Text textCounter = tester.firstWidget(find.byKey(Key('counter')));
    // Verify that both counters starts at 0.
    expect(textCounter.data, 'My Maximum Bid: 0.0');

  });


  testWidgets('add', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add_circle));
    await tester.pump();

    Text textCounter1 = tester.firstWidget(find.byKey(Key('counter')));
    expect(textCounter1.data, 'My Maximum Bid: 50.0');

  });

}