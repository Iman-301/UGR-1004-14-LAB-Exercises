import 'dart:io';

void main() {
  stdout.write('Enter a number: ');

  try {
    String userInput = stdin.readLineSync()!;
    int number = int.parse(userInput);

    print('Input: $userInput');
    print('Number: $number');
  } catch (e) {
    print('Invalid input: $e');
  }
}