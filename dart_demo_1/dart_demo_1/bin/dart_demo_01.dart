import 'package:dart_demo_1/dart_demo_1.dart' as dart_demo_1;

void main(List<String> arguments) {
  Chef c1 = Chef("고길동")..cook();
}

class Chef {
  String name;

  Chef(this.name);

  void cook() {
    print("$name 요리를 시작합니다.");
  }
}
