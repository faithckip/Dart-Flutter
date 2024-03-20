//Task 1: Function to add two numbers
int addNumbers(int num1, int num2) {
  return num1 + num2;
}

//Task 2: Program using a for loop to print numbers from 1 to 10
void printNumbers() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

//Task 3: Program using switch statement
void checkValue(String value) {
  switch (value) {
    case 'hello':
      print('Hi there!');
      break;
    case 'goodbye':
      print('See you later');
      break;
    default:
      print('Unknown value');
  }
}

//Task 4: Program using a while loop to print numbers from 20 to 10
void printNumberDescending() {
  int num = 20;
  while (num >= 10) {
    print(num);
    num--;
  }
}

//Task 5: Program using an if-else statement to check if a number is even
void checkEvenOdd(int num) {
  if (num % 2 == 0) {
    print('$num is even');
  } else {
    print('$num id odd');
  }
}

//Task 6: Program to find the largest number in a list
int findLargestNumber(List<int> numbers) {
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

//Task 7: Program using try-catch block to catch an exception
void divideNumbers(int a, int b) {
  try {
    double result = a / b;
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }
}

void main() {
  //Task 1
  print('Task1: Add two numbers');
  print('Sum: ${addNumbers(5, 7)}');

  //Task2
  print('\nTask 2: Print numbers from 1 to 10');
  printNumbers();

  //Task3
  print('\nTask 3: Check string value');
  checkValue('hello');
  checkValue('goodbye');
  checkValue('unknown');

  //Task 4
  print('\nTask 4: Print numbers from 20 to 10');
  printNumberDescending();

  //Task 5
  print('\nTask 5: Check if a number a number is even or odd');
  checkEvenOdd(10);
  checkEvenOdd(7);

  //Task 6
  print('\nTask 6: Find the largest number in a list');
  List<int> numbers = [4, 9, 2, 15, 7];
  print('List: $numbers');
  print('Largest Number: ${findLargestNumber(numbers)}');

  //Task 7
  print('\nTask 7: Divide two numbers with exception handling');
  divideNumbers(10, 0);
}
