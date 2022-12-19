import 'package:dart_participants_lottery/lottery_logic.dart';
import 'package:test/test.dart';

void main() {
  group('In runLottery method', () {
    final names = "Adam, Bob, Charlie, David, Eve, Frank, "
        "George, Henry, Ida, Jack, Kate, Luke, Mary, Nora, "
        "Oscar, Paul, Quinn, Robert, Susan, Tom, Ursula, "
        "Victor, Wendy, Xavier, Yvonne, Zach";
    final randomizedNames = runLottery(names);
    setUp(() {
      // Additional setup goes here.
    });
    test('test input length remains ok', () {
      expect(randomizedNames.length, 26);
    });

    test('test input names remain ok', () {
      expect(randomizedNames, contains('Adam'));
      expect(randomizedNames, contains('Bob'));
      expect(randomizedNames, contains('Charlie'));
      expect(randomizedNames, contains('David'));
      expect(randomizedNames, contains('Eve'));
      expect(randomizedNames, contains('Frank'));
      expect(randomizedNames, contains('George'));
      expect(randomizedNames, contains('Henry'));
      expect(randomizedNames, contains('Ida'));
      expect(randomizedNames, contains('Jack'));
      expect(randomizedNames, contains('Kate'));
      expect(randomizedNames, contains('Luke'));
      expect(randomizedNames, contains('Mary'));
      expect(randomizedNames, contains('Nora'));
      expect(randomizedNames, contains('Oscar'));
      expect(randomizedNames, contains('Paul'));
      expect(randomizedNames, contains('Quinn'));
      expect(randomizedNames, contains('Robert'));
      expect(randomizedNames, contains('Susan'));
      expect(randomizedNames, contains('Tom'));
      expect(randomizedNames, contains('Ursula'));
      expect(randomizedNames, contains('Victor'));
      expect(randomizedNames, contains('Wendy'));
      expect(randomizedNames, contains('Xavier'));
      expect(randomizedNames, contains('Yvonne'));
      expect(randomizedNames, contains('Zach'));
    });

    test('test input names are randomized', () {
      expect(randomizedNames, isNot(equals(names.split(', '))));
    });
  });

  group('In runLotteryList method', () {
    final names = [
      'Adam',
      'Bob',
      'Charlie',
      'David',
      'Eve',
      'Frank',
      'George',
      'Henry',
      'Ida',
      'Jack',
      'Kate',
      'Luke',
      'Mary',
      'Nora',
      'Oscar',
      'Paul',
      'Quinn',
      'Robert',
      'Susan',
      'Tom',
      'Ursula',
      'Victor',
      'Wendy',
      'Xavier',
      'Yvonne',
      'Zach'
    ];
    final randomizedNames = runLotteryList(names);
    setUp(() {
      // Additional setup goes here.
    });
    test('test input length remains ok', () {
      expect(randomizedNames.length, 26);
    });

    test('test input names remain ok', () {
      expect(randomizedNames, contains('Adam'));
      expect(randomizedNames, contains('Bob'));
      expect(randomizedNames, contains('Charlie'));
      expect(randomizedNames, contains('David'));
      expect(randomizedNames, contains('Eve'));
      expect(randomizedNames, contains('Frank'));
      expect(randomizedNames, contains('George'));
      expect(randomizedNames, contains('Henry'));
      expect(randomizedNames, contains('Ida'));
      expect(randomizedNames, contains('Jack'));
      expect(randomizedNames, contains('Kate'));
      expect(randomizedNames, contains('Luke'));
      expect(randomizedNames, contains('Mary'));
      expect(randomizedNames, contains('Nora'));
      expect(randomizedNames, contains('Oscar'));
      expect(randomizedNames, contains('Paul'));
      expect(randomizedNames, contains('Quinn'));
      expect(randomizedNames, contains('Robert'));
      expect(randomizedNames, contains('Susan'));
      expect(randomizedNames, contains('Tom'));
      expect(randomizedNames, contains('Ursula'));
      expect(randomizedNames, contains('Victor'));
      expect(randomizedNames, contains('Wendy'));
      expect(randomizedNames, contains('Xavier'));
      expect(randomizedNames, contains('Yvonne'));
      expect(randomizedNames, contains('Zach'));
    });

    test('test input names are randomized', () {
      expect(randomizedNames, isNot(equals(names)));
    });
  });
}
