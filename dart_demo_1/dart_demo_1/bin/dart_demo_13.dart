import 'dart:math';

class Animal {
  final String name;
  const Animal(this.name);
}

void main(List<String> args) {
  Animal a1 = const Animal("사자1");
  // a1.name = "호랑이";
  Animal a2 = const Animal("사자2");

  print(a1.hashCode);
  print(a2.hashCode);
}
