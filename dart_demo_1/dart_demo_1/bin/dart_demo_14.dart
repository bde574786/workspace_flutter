// class Person {
//   String name;
//   int age;

//   Person({required this.name, required this.age});
// }

class Person {
  String? name;
  int? age;

  // Person({this.name, this.age = 1});
  Person({this.name, this.age});
}

void main(List<String> args) {
  Person p1 = Person(name: "홍길동");
  print(p1.age);
  // null 대체 연산자 활용

  p1.age = 10;

  int mAge = p1.age ?? 1;
  print(mAge);
}
