void divideNumbers(int dividend, int divisor) {
  try {
    print(dividend ~/ divisor);
  } catch (e) {
    if (e is IntegerDivisionByZeroException) {
      print('Error: Division by zero is not allowed.');
    } else {
      print('Error: An unexpected error occurred.');
    }
  }
}

void main() {
  int a = 10;
  int b = 0;

  divideNumbers(a, b);
}