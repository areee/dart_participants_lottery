import 'dart:math';

void main(List<String> arguments) {
  // names list
  var names = 'Mike, Helen, Terry, Catherine, Max';
  var namesList = names.split(', ');
  print(namesList);

  // reordered list
  var orderedList = <String>[];

  orderedList.add('test 1');
  orderedList.add('test 2');
  print(orderedList);

  // random numbers
  var random = Random();
  for (var i = 0; i < namesList.length; i++) {
    print(random.nextInt(namesList.length));
  }
}
