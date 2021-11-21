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
  });
}
