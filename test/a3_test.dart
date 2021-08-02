// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:desafio_a1/desafio_a3.dart';

void main() {
  testWidgets('Application smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    Text textCounter1 = tester.firstWidget(find.byKey(Key('counter1')));
    Text textCounter2 = tester.firstWidget(find.byKey(Key('counter2')));

    // Verify that both counters starts at 0.
    expect(textCounter1.data, '0');
    expect(textCounter2.data, '0');
  });


  testWidgets('add1', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());


    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byTooltip("Increment1"));
    await tester.pump();

    Text textCounter1 = tester.firstWidget(find.byKey(Key('counter1')));
    expect(textCounter1.data, '1');

  });

  testWidgets('add2', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    await tester.tap(find.byTooltip("Increment2"));
    await tester.pump();

    Text textCounter1 = tester.firstWidget(find.byKey(Key('counter2')));
    expect(textCounter1.data, '1');

  });
}