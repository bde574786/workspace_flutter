import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/home_page.dart';

void main() {
  runApp(const MyApp());
}

// 기본 위젯
// Text 위젯
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String _name = "홍길동";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: HomePage(),
      ),
    ));
  }
}

class BasicGesture extends StatelessWidget {
  const BasicGesture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("눌러졌어요 !!!");
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
      ),
    );
  }
}

class BasicContainer extends StatelessWidget {
  const BasicContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: 48.0,
      height: 48.0,
      decoration: BoxDecoration(
          color: Colors.amber[300],
          border: Border.all(color: Colors.red),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
    );
  }
}

class BasicStack extends StatelessWidget {
  const BasicStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.green,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        )
      ],
    );
  }
}
