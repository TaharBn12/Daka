import 'package:flutter_test/flutter_test.dart';
import 'package:daka/main.dart';

void main() {
  testWidgets('Daka app opens', (tester) async {
    await tester.pumpWidget(const Daka());
    expect(find.text('أهلاً بك في دكا'), findsOneWidget);
  });
}
