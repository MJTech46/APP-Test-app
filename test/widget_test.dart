import 'package:flutter_test/flutter_test.dart';

import 'package:task_nest/app/app.dart';

void main() {
  testWidgets('TaskNest app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const TaskNestApp());

    expect(find.text('TaskNest'), findsOneWidget);
    expect(find.text('No tasks yet'), findsOneWidget);
    expect(find.text('Add Task'), findsOneWidget);
  });
}