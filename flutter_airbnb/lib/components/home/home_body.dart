import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    print("bodyWidth 70% : ${bodyWidth}");
    return SizedBox(
      width: bodyWidth,
      child: Column(
        children: [
          Container(
            color: Colors.amberAccent,
          ),
          Container(
            color: Colors.redAccent,
          )
        ],
      ),
    );
  }
}
