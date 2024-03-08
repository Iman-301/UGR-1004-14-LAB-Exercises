import 'dart:io';

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  print("Enter the starting number:");
  int start = int.parse(stdin.readLineSync()!);

  print("Enter the ending number:");
  int end = int.parse(stdin.readLineSync()!);

  print("Prime numbers within the range $start to $end:");

  for (int i = start; i <= end; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}