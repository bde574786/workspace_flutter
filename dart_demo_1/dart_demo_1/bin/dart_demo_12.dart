import 'dart:math';

void main(List<String> args) {
  var list = [1, 2, 3];
  var newList1 = list;
  var newList2 = [...list];

  print(list);
  print(newList1);
  print(newList2);
  print("--------------");

  newList2[0] = 500;
  newList1[0] = 1000;
  print(list);
  print(newList1);
  print(newList2);
}
