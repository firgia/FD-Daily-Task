import 'package:flutter_test/flutter_test.dart';
import 'package:daily_task/app/utils/helpers/app_helpers.dart';

void main() {
  group("String Extension", () {
    test("Get Initial Name", () {
      final actual = [
        "Hello World Hello   World".getInitialName(4),
        "Hello World".getInitialName(2),
        "Hello World".getInitialName(1),
      ];

      final expected = [
        "HWHW",
        "HW",
        "H",
      ];

      expect(actual, expected);
    });

    test("Due Date", () {
      final actual = [
        DateTime.now().add(const Duration(days: 2)).dueDate(),
        DateTime.now().add(const Duration(hours: 3)).dueDate(),
        DateTime.now().add(const Duration(minutes: 30)).dueDate(),
        DateTime.now().add(const Duration(seconds: 55)).dueDate(),
        DateTime.now().add(-const Duration(seconds: 55)).dueDate(),
      ];

      final expected = [
        "2 Days",
        "3 Hours",
        "30 Minutes",
        "55 Seconds",
        "Is Overdue",
      ];

      expect(actual, expected);
    });
  });
}
