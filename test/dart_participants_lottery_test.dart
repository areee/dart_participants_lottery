import 'package:dart_participants_lottery/lottery_logic.dart';
import 'package:test/test.dart';

void main() {
  group('In runLottery method', () {
    final names = "John, Jane, Joe, Jack";
    final randomizedNames = runLottery(names);
    setUp(() {
      // Additional setup goes here.
    });
    test('test input length remains ok', () {
      expect(randomizedNames.length, 4);
    });

    test('test input names remain ok', () {
      expect(randomizedNames, contains('John'));
      expect(randomizedNames, contains('Jane'));
      expect(randomizedNames, contains('Joe'));
      expect(randomizedNames, contains('Jack'));
    });

    test('test input names are randomized', () {
      expect(randomizedNames, isNot(equals(['John', 'Jane', 'Joe', 'Jack'])));
    });
  });

  group('In runLotteryList method', () {
    final names = ["John", "Jane", "Joe", "Jack"];
    final randomizedNames = runLotteryList(names);
    setUp(() {
      // Additional setup goes here.
    });
    test('test input length remains ok', () {
      expect(randomizedNames.length, 4);
    });

    test('test input names remain ok', () {
      expect(randomizedNames, contains('John'));
      expect(randomizedNames, contains('Jane'));
      expect(randomizedNames, contains('Joe'));
      expect(randomizedNames, contains('Jack'));
    });

    test('test input names are randomized', () {
      expect(randomizedNames, isNot(equals(['John', 'Jane', 'Joe', 'Jack'])));
    });
  });
}
