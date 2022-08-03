import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(result),
          TextField(
            keyboardType: TextInputType.number,
          ),
        ],
      ),
    );
  }

  void isPrimeNumber(int number) {
    if (number == 0 || number == 1) {
      print("소수 아님");
      return;
    }

    for (int i = 2; i < number; i++) {
      if (number == 2 || i == number - 1) {
        print("소수");
        return;
      } else if (number % i == 0) {
        print("소수 아님");
        return;
      }
    }
  }
}
