import 'dart:io';

void main() {
  print("Enter the grade:");
  double grade = double.parse(stdin.readLineSync()!);
  String letterGrade;

  switch (grade) {
    case 90:
      letterGrade = "A";
      break;
    case 75:
      letterGrade = "B";
      break;
    case 50:
      letterGrade = "C";
      break;
    case 40:
      letterGrade = "D";
      break;
    default:
      letterGrade = "F";
      break;
  }

  print("Grade: $letterGrade");
}