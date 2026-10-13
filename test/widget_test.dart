// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:profil_mahasiswa/main.dart';

void main() {
  testWidgets('Profile screen displays student details', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Profil Mahasiswa'), findsOneWidget);
    expect(find.text('Nama Mahasiswa'), findsOneWidget);
    expect(find.text('NIM: 21.11.0000'), findsOneWidget);
    expect(find.text('S1 Informatika'), findsOneWidget);
    expect(find.byIcon(Icons.person), findsOneWidget);
  });
}
