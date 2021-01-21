// import 'package:my_first_dart_program/my_first_dart_program.dart' as my_first_dart_program;
import 'dart:io'; // stdin.readLineSync()

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: dart .\\bin\\my_first_dart_program.dart JSON_FILENAME');
    exit(1);
  }
  var JSON_filename = arguments[0];
  print(JSON_filename);
  var my_json = new File(JSON_filename);

}