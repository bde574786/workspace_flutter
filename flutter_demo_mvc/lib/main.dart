import 'package:flutter/material.dart';
import 'package:flutter_demo_mvc/screens/home_screen.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter rest api ex",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.orange[100],
        appBarTheme: AppBarTheme(elevation: 0.0),
      ),
      home: HomeScreen(),
    );
  }
}
