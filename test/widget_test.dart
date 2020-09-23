import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fplproject/pages/goals_page.dart';
import 'package:fplproject/main.dart';

void main() {
  testWidgets("Material App Testing", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byType(MaterialApp), findsOneWidget);
  });
  testWidgets("Goals Page Testing", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: GoalsPage(),
    ));

    expect(find.text("HIILT"), findsOneWidget);
  });

  testWidgets("Textfield Testing", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: GoalsPage(),
    ));

    final tfWidget = find.byKey(ValueKey("tf1"));

    await tester.enterText(tfWidget, "Hi I am PK");

    expect(find.text("Hi I am PK"), findsOneWidget);
  });
}
