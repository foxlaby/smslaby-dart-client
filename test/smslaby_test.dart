import 'package:smslaby/smslaby.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    SMSLaby smslaby;

    setUp(() {
      smslaby = SMSLaby();
    });

    test('First Test', () {
      expect(smslaby.isAwesome, isTrue);
    });
  });
}
