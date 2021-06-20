import 'dart:io';
import 'package:dart_participants_lottery/lottery_logic.dart' as lottery;

void main() {
  print('Add lottery names, -1 stops:');

  var namesList = <String>[];

  while (true) {
    final input = stdin.readLineSync();

    if (input == null) {
      break;
    }

    if (input == '-1') {
      break;
    }
    namesList.add(input);
  }
  print(lottery.runLotteryList(namesList));
}
