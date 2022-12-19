import 'package:dart_participants_lottery/extensions/string_extension.dart';

/// Runs a lottery with the given names separated by comma
List<String> runLottery(String names) {
  names = names.trimAndReplaceDoubleSpaces();
  return runLotteryList(names.split(','));
}

/// Runs a lottery with the given names in a list
List<String> runLotteryList(List<String> names) {
  names = names.map((e) => e.trimAndReplaceDoubleSpaces()).toList();
  // Shuffle (randomize) the names
  names.shuffle();
  return names;
}

/// Prints the given names in a list
void printNames(List<String> names) {
  print(''); // Empty line
  for (var i = 0; i < names.length; i++) {
    print('${i + 1}. ${names[i]}');
  }
}
