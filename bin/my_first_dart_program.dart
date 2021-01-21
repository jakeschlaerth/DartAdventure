// import 'package:my_first_dart_program/my_first_dart_program.dart' as my_first_dart_program;
import 'dart:io'; // stdin.readLineSync()

void main(List<String> arguments) {
  int numby;
  numby = assemble(4, 7);

  print(numby);
  var ship = Ship('Ser');

  print(ship.name);
  // final name = stdin.readLineSync();
  // print('Nice to meet you, $name.\n'
  //     'Let\'s go on an adventure.\n'
  //     'Shall I randomly choose a planet to vist? (Y/N)');

  
  while (false) {
    
    print(numby);
    var answer;
    answer = stdin.readLineSync();
    if (answer == 'Y') {
      // print the details of rando planet
      print('Okay! Travelling to Merc...\n'
          'Arrived at Merc. A very hot planet.');
          break;
    } else if (answer == 'N') {
      print('What planet would you like to vist?');
      final planet = stdin.readLineSync();
      print('Travelling to $planet...');
      break;
    } else {
      print('Sorry, please type Y or N');
    }
  }
}

int assemble(int x, int y) {
  return x+y;
}

class Ship {
  String name;
  
  Ship({this.name = "Unnamed"}){
  
}
}