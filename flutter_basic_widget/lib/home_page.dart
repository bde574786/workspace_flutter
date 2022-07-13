import 'package:flutter/material.dart';

// 지금까지는 상태가 없는 stateless 위젯 사용

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 변수 선언 : 상태를 저장할 수 있는 변수를 선언
  int _counter = 0;

  // 메서드 선언(동작)
  void _increment() {
    // 반드시 setState 사용(그 안에 동작을 정의해야 한다.)
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ElevatedButton(onPressed: _increment, child: Text('increment')),
          SizedBox(width: 16),
          Text('Count : $_counter')
        ],
      ),
    );
  }
}
