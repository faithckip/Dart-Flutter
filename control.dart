import 'dart:ffi';
import 'dart:io';

void main() {
  print("Enter Faith's age: ");

  //var age = 18;
  //Read age from the user input and parse it to integer
  var age = int.parse(stdin.readLineSync()!);
  
  if (age > 18) {
    print(" Faith is a voter in Kenya");
  } else if (age == 18) {
    print("Faith is eligible to vote");
  } else {
    print("Faith is still young to vote");
  }
}
