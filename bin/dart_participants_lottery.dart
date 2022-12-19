import 'dart:io';
import 'package:dart_participants_lottery/lottery_logic.dart' as lottery;

void main() {
  print('Add lottery names, -1 or empty stops:');
  var names = <String>[];
  while (true) {
    final input = stdin.readLineSync();
    if (input == '-1' || input == '') break;
    names.add(input!);
  }
  var randomizedNames = lottery.runLotteryList(names);
  lottery.printNames(randomizedNames);
}
