import 'dart:io';
String reverseString(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  return reversed;
}

void main() {
  print("Enter a string:");
  String inputString = stdin.readLineSync()!;
  String reversedString = reverseString(inputString);
  print(reversedString);
}