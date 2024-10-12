import 'package:belanja/pages/home_page.dart';
// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:belanja/main.dart';

void main() {
  testWidgets('HomePage displays a list of gadgets', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the HomePage is displayed.
    expect(find.byType(HomePage), findsOneWidget);

    // Verify that specific gadgets are displayed on the HomePage.
    expect(find.text('Xiaomi Redmi Note 12'), findsOneWidget);
    expect(find.text('Samsung Galaxy S23'), findsOneWidget);
    expect(find.text('ASUS ROG Zephyrus G14'), findsOneWidget);
    expect(find.text('Apple iPhone 14 Pro'), findsOneWidget);
    expect(find.text('Sony WH-1000XM4'), findsOneWidget);
    expect(find.text('Dell XPS 13'), findsOneWidget);
    expect(find.text('Oppo A78'), findsOneWidget);
    expect(find.text('Vivo V25'), findsOneWidget);
    expect(find.text('JBL Flip 5'), findsOneWidget);
    expect(find.text('HP Pavilion x360'), findsOneWidget);

    // Verify that the footer displays the author's name.
    expect(find.text('Elis Nurhidayati - 2241720035'), findsOneWidget);
  });
}



// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// import 'package:belanja/main.dart';

// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());

//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);

//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();

//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }
