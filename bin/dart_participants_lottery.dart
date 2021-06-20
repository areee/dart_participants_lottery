import 'dart:io';
import 'package:dart_participants_lottery/lottery_logic.dart' as lottery;

void main(/*List<String> arguments*/) {
  stdout.writeln('Type something');
  final input = stdin.readLineSync();
  stdout.writeln('You typed: $input');

  // var result = lottery.runLottery('Mike, Helen, Terry, Catherine, Max');
  // print(result);
}
