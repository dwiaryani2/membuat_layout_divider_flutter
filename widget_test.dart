import 'package:flutter_test/flutter_test.dart';
import "package:flutter_layout/main.dart"; 

void main() {
  testWidgets('Test MyApp', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify if the vertical and horizontal tabs exist.
    expect(find.text('Vertical Divider'), findsOneWidget);
    expect(find.text('Horizontal Divider'), findsOneWidget);
  });
}
