import 'dart:io';

//interface for a Human
abstract class Human {
  void greet();
}

//Base class for Human
class Person implements Human {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  void greet() {
    print('Hello, my name is $name and I am $age years old');
  }

  void eat() {
    print('$name is eating.');
  }
}

//Subclass of person
class Student extends Person {
  String school;

  Student(String name, int age, this.school) : super(name, age);

  @override
  void greet() {
    print('Hi, Iam a student named $name, I study at $school.');
  }

  void study() {
    print('$name is studying.');
  }
}

void main() {
  //Initialize a list of Humans
  List<Human> humans = [];

  //simulate reading from a file by using a list of strings
  List<String> lines = [
    'Alice, 25, Nairobi University',
    'Bob, 22, Kenyatta University',
    'Eve, 30, Moi University'
  ];

  //create instances of Student from simulated file data
  for (String line in lines) {
    List<String> parts = line.split(',');
    String name = parts[0].trim();
    int age = int.parse(parts[1].trim());
    String school = parts[2].trim();
    humans.add(Student(name, age, school));
  }

  //Read data from a file and create instnaces of Student
  //File file = File('student.txt');
  //List<String> lines = file.readAsLinesSync();

  //for (String line in lines) {
  //List<String> parts = line.split(',');
  //String name = parts[0];
  //int age = int.parse(parts[1]);
  //String school = parts[2];
  //humans.add(Student(name, age, school));
  //}
  //Demonstrate looping through list of Humans
  for (Human human in humans) {
    human.greet(); //polymorphism: calling overriden method

    if (human is Student) {
      human.study(); //Calling subclass method
    } else if (human is Person) {
      human.eat(); //Calling superclass method
    }
  }
}
