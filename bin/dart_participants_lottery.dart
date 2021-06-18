import 'dart:math';

void main(List<String> arguments) {
  var result = _runLottery('Mike, Helen, Terry, Catherine, Max');
  print(result);
}

// Lottery function
String _runLottery(String names) {
  var namesList = names.split(', ');

  var reOrderedList = <int>[];

  var random = Random();

  while (reOrderedList.length != namesList.length) {
    var randomNumber = random.nextInt(namesList.length);

    if (!reOrderedList.contains(randomNumber)) {
      reOrderedList.add(randomNumber);
    }
  }

  var returnedString = '';

  for (var i in reOrderedList) {
    returnedString = '$returnedString ${namesList[i]}';
  }

  return returnedString;
}
