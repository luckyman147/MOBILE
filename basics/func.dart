import 'dart:io';

void main() {
//   print('Enter your age');
//   var age = stdin.readLineSync();
// //print age
//   print('Your age is $age');

  print('Enter your birth year');
  var year = stdin.readLineSync();
  var age = DateTime.now().year - num.parse(year!);
  print('Your age is $age years old');
}
