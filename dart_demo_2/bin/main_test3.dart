import 'main_test2.dart';

void main(List<String> args) {
  var flyByobjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

  printWithDelay2("비동기 함수 입니다");

  flyByobjects.where((name) => name.contains('turn')).forEach(print);
  // 익명 함수를 인수로 전달할 때 유용한 방법이다.
}

// Enums
enum planetType { terrestial, gas, ice }

// 상속
class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

// 비동기 Async
// 콜백 지옥을 피하고 async 및 await를 사용할 수 있다.
// 훨씬 코드를 쉽게 만들 수 있다.

const oneSecond = Duration(seconds: 5);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

Future<void> printWithDelay2(String message) {
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });
}
