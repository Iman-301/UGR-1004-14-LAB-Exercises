import 'dart:math';

void main() {
  List<int> randomNumbers = generateRandomNumbers(20);
  print('Random Numbers: $randomNumbers');

  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);
  print('Unique Numbers: $uniqueNumbers');
}

List<int> generateRandomNumbers(int count) {
  Random random = Random();
  List<int> numbers = [];

  for (int i = 0; i < count; i++) {
    numbers.add(random.nextInt(100));
  }

  return numbers;
}