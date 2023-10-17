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

  /* Test ke - dua */
  group('Custom User Test', () {
    User user1 = User(id: 1);
    User user2 = User(name: 'Denise');
    User user3 = User(id: 1, name: 'Denise');

    test("Single parameter (id) is valid.", () {
      expect(user1.id, equals(1));
      expect(user1.name, equals('No Name'));
    });

    test("Single parameter (name) is valid.", () {
      expect(user2.id, equals(0));
      expect(user2.name, equals('Denise'));
    });

    test("All parameters are valid.", () {
      expect(user3.id, equals(1));
      expect(user3.name, equals('Denise'));
    });
  });
}
