import 'dart:math';

void main(List<String> args) {
  Set<int> lotto = {};

  // Random 클래스 사용
  Random random = new Random();
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);
  lotto.add(random.nextInt(45) + 1);

  print(lotto);

  List<int> lottoList = lotto.toList();
  lottoList.sort();
  print(lottoList);
}
