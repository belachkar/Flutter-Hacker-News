import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:boring_flutter1/main.dart';

void main() {
  testWidgets('Clicking tile opens it', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.byIcon(Icons.flag), findsNothing);

    await tester.tap(find.byType(ExpansionTile).first);
    await tester.pump();

    expect(find.byIcon(Icons.flag), findsOneWidget);
  });
}
