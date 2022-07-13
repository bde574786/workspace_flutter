void main(List<String> args) {
  BMW b = new BMW();
  print(b.power);
  print(b.wheelName);
}

class Wheel {
  String wheelName = "4륜 구동 바퀴";
}

class Engine {
  int power = 5000;
}

class BMW with Engine, Wheel {
 
}
