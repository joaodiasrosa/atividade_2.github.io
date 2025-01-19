 import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myapp/main.dart'; // Substitua pelo caminho correto se necessário.

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Constrói o app e dispara um frame.
    await tester.pumpWidget(const App());

    // Verifica que o contador começa em 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Simula o clique no botão '+' e atualiza o frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica que o contador foi incrementado para 1.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
