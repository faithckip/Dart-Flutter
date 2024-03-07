//Create a Dart program that prompts the user for a number and then prints a message to the console based on the following criteria:

/*If the number is greater than 10, print "Your number is greater than 10"
If the number is less than 10, print "Your number is less than 10"
If the number is equal to 10, print "Your number is equal to 10"*/

import 'dart:io';

void main() {
  //Prompt the user for a number
  stdout.write("Enter a number: ");

  //Read the user input
  String input = stdin.readLineSync()!;

  //Convert the input string to an integer
  int number = int.tryParse(input) ?? 0;

  //check the number and print the corresponding  message
  if (number > 10) {
    print("Your number is greater than 10");
  } else if (number < 10) {
    print("Your number is less than 10");
  } else {
    print("Your number is equal to 10");
  }
}
