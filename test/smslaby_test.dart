import 'package:smslaby/smslaby.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    SMSLaby awesome;

    setUp(() {
      awesome = SMSLaby();
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
