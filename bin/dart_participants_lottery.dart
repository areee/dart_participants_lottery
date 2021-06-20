import 'package:dart_participants_lottery/lottery_logic.dart' as lottery;

void main(List<String> arguments) {
  var result = lottery.runLottery('Mike, Helen, Terry, Catherine, Max');
  print(result);
}
