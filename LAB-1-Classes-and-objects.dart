class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

void main() {
  Person person1 = Person("Iman", 25, "4 kilo");
  print("Person 1");
  print("Name: ${person1.name}");
  print("Age: ${person1.age}");
  print("Address: ${person1.address}");

  Person person2 = Person("Ibrahim", 30, "5-kilo");
  print("\nPerson 2");
  print("Name: ${person2.name}");
  print("Age: ${person2.age}");
  print("Address: ${person2.address}");

  person1.age = 26;
  person1.address = "6-kilo";
  print("\nnew person 1");
  print("Name: ${person1.name}");
  print("Age: ${person1.age}");
  print("Address: ${person1.address}");
}