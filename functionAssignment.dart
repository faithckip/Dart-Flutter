// Task 1
double addTwo(double num1, double num2) {
  return num1 + num2;
}

// Task 2
double subtractTwo(double num1, double num2) {
  return num1 - num2;
}

// Task 3
double multiplyTwo(double num1, double num2) {
  return num1 * num2;
}

// Task 4
double divideTwo(double num1, double num2) {
  if (num2 == 0) {
    throw ArgumentError("Error: Cannot divide by zero");
  }
  return num1 / num2;
}

// Task 5
int stringLength(String string) {
  return string.length;
}

// Task 6
dynamic getFirstElement(List<dynamic> lst) {
  if (lst.isEmpty) {
    throw ArgumentError("Error: Empty list provided");
  }
  return lst[0];
}

void main() {
  // Example usage:
  print(addTwo(5, 3)); // Output: 8
  print(subtractTwo(7, 2)); // Output: 5
  print(multiplyTwo(4, 6)); // Output: 24
  print(divideTwo(10, 2)); // Output: 5.0
  print(stringLength("Hello, world!")); // Output: 13
  print(getFirstElement([1, 2, 3, 4])); // Output: 1
}
