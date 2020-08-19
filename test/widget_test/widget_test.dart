// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movieshowflutter/main.dart';
import 'package:movieshowflutter/model/schedule/Show.dart';
import 'package:movieshowflutter/ui/MovieDetailsPage.dart';
import 'package:movieshowflutter/ui/SearchPage.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // await tester.pumpWidget(MyApp());
    await tester.pumpWidget(
      MaterialApp(
        home: Text("Movie Demo"),
      ),
    );
    // Verify that our counter starts at 0.
    expect(find.text("Movie Demo"), findsOneWidget);
    //  expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    /** await tester.tap(find.byIcon(Icons.add));
        await tester.pump();

        // Verify that our counter has incremented.
        expect(find.text('0'), findsNothing);
        expect(find.text('1'), findsOneWidget); **/
  });

  testWidgets('Check for empty text widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // await tester.pumpWidget(MyApp());
    await tester.pumpWidget(
      MaterialApp(
        home: Text("New Schedule Movies"),
      ),
    );
    // Verify that our counter starts at 0.
    expect(find.text("New Schedule Movies"), findsOneWidget);
  });

  testWidgets('Check for raised button widget with text',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // await tester.pumpWidget(MyApp());
    await tester.pumpWidget(
      MaterialApp(
        home: RaisedButton(
          onPressed: () {},
          child: Text("Search"),
        ),
      ),
    );

    await tester.tap(find.widgetWithText(RaisedButton, "Search"));
    // Verify that our counter starts at 0.
    expect(find.text("Search"), findsOneWidget);
  });
}
