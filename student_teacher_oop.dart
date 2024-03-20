//use mixins to add functionality to classes without using inheritance
// Define EmployeeMixin as a mixin
mixin EmployeeMixin {
  void displayEmployeeDetails();
}

// Define Student class
class Student with EmployeeMixin {
  String name;
  int age;
  int gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student's information
  @override
  void displayEmployeeDetails() {
    print('Student Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Define Teacher class
class Teacher with EmployeeMixin {
  String name;
  int age;
  String subject;
  String department;

  // Constructor
  Teacher(this.name, this.age, this.subject, this.department);

  // Method to print teacher's information
  @override
  void displayEmployeeDetails() {
    print('Teacher Name: $name');
    print('Age: $age');
    print('Subject: $subject');
    print('Department: $department');
  }
}

// Define main class
class Main {
  // Method to create student and teacher objects
  void createObjects() {
    // Create student object
    var student = Student('Alice', 15, 10);
    // Create teacher object
    var teacher = Teacher('Mr. Smith', 35, 'Math', 'Science');

    // Display student information
    print('Student Information:');
    student.displayEmployeeDetails();
    print('');

    // Display teacher information
    print('Teacher Information:');
    teacher.displayEmployeeDetails();
  }
}

void main() {
  // Create main object and call createObjects method
  var main = Main();
  main.createObjects();
}
