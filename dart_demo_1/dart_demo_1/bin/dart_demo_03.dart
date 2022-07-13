void main(List<String> args) {
  CheeseBurger ch = CheeseBurger("치즈버거");
  print(ch.name);
} // end of main

class Burger {
  final String? name;
  Burger(this.name) {} 
}

class CheeseBurger extends Burger {
//매개변수의 이름과 부모클래스의 변수이름이 같아야 매핑된다.
  CheeseBurger(String name) : super(name);
}