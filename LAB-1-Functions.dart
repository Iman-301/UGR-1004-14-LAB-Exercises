import 'dart:io';

int sumNumbers(int a, int b) {
  return a + b;
}

void main() {
  print("Enter the first number:");
  int number1 = int.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  int number2 = int.parse(stdin.readLineSync()!);

  int sum = sumNumbers(number1, number2);

  print("The sum is $sum.");
}