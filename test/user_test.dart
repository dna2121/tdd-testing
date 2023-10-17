import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_demo/user.dart';

void main() {
  group('Default User Test', () {
    User user = User();

    test("User has an id with type int", () {
      expect(user.id, isA<int>());
    });

    test("User has a name with type String", () {
      expect(user.name, isA<String>());
    });

    test("Default id = 0. Default name = 'No Name'", () {
      expect(user.id, equals(0));
      expect(user.name, equals('No Name'));
    });
  });
}
