abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  Circle circle = Circle(5.0);
  double circleArea = circle.calculateArea();

  Square square = Square(4.0);
  double squareArea = square.calculateArea();

  print("Circle Area: ${circleArea.toStringAsFixed(2)}");
  print("Square Area: ${squareArea.toStringAsFixed(2)}");
}