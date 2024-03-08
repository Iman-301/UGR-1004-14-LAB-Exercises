class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    if (marks.isEmpty) {
      return 0;
    }
    int total = calculateTotalMarks();
    return total / marks.length;
  }
}

void main() {
  Student student1 = Student("iman", 18, "4-kilo", 1, [90, 85, 95, 80]);
  print("Student 1:");
  print("Name: ${student1.name}");
  print("Age: ${student1.age}");
  print("Address: ${student1.address}");
  print("Roll Number: ${student1.rollNumber}");
  print("Marks: ${student1.marks}");


  double averageMarks = student1.calculateAverageMarks();
  print("Average: $averageMarks");

  student1.marks = [94, 90, 92, 100, 88];
  averageMarks = student1.calculateAverageMarks();
  print("\nChanged:");
  print("Name: ${student1.name}");
  print("Age: ${student1.age}");
  print("Address: ${student1.address}");
  print("Roll Number: ${student1.rollNumber}");
  print("Marks: ${student1.marks}");
  print("Average: $averageMarks");
}