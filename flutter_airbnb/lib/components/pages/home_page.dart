import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_header.dart';

import '../home/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [HomeHeader(), HomeBody()],
    ));
  }
}
