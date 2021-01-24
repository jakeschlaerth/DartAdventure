// import 'package:my_first_dart_program/my_first_dart_program.dart' as my_first_dart_program;
import 'dart:async'; // readAsString
import 'dart:io'; // stdin.readLineSync()
import 'dart:convert'; // jsonDecode()
import 'dart:math'; // random

void main(List<String> arguments) {
  // if no argument is entered at the command line
  if (arguments.isEmpty) {
    // print instructions
    print('Usage: dart .\\bin\\my_first_dart_program.dart JSON_FILENAME');
    // exit program with error code 1
    exit(1);
  }
  new File(arguments[0]).readAsString().then((String contents) {
    var planet_to_visit = null;
    var planet_map = jsonDecode(contents);
    var system_name = planet_map['name'];
    var num_planets = planet_map['planets'].length;
    var planets_list = planet_map['planets'];
    print('Hello, welcome to $system_name!\n'
        'There are $num_planets planets to visit.\n'
        'What is your name?');
    var name = stdin.readLineSync();
    print('Hello, $name.\n'
        'Let\'s go on an adventure!\n'
        'Would you like me to pick a random planet for you to visit? (Y/N)');
    var answer = stdin.readLineSync();
    while (true) {
      if (answer == 'Y') {
        // random number
        var rng = new Random();
        var random_int = rng.nextInt(num_planets);
        planet_to_visit = planets_list[random_int];
        break;
      }
      if (answer == 'N') {
        // no random number
        print('What planet would you like to visit?');
        var planet = stdin.readLineSync();
        for (int i = 0; i < num_planets; i++) {
          if (planets_list[i]['name'] == planet) {
            planet_to_visit = planets_list[i];
          }
        }
        break;
      } else {
        print('Sorry, that\'s not an option. Please pick (Y/N)');
        answer = stdin.readLineSync();
      }
    }
    if (planet_to_visit == null) {
      print('That planet doesnt exist! Exiting program...');
    } else {
      var planet_name = planet_to_visit['name'];
      var planet_desc = planet_to_visit['description'];
      print('Traveling to $planet_name...\n'
          '$planet_desc');
    }
  });
}
