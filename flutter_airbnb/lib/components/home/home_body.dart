import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_airbnb/components/home/home_body_banner.dart';
import 'package:flutter_airbnb/components/home/home_body_popular.dart';
import 'package:flutter_airbnb/size.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyWidth = getBodyWidth(context);
    print("bodyWidth 70% : ${bodyWidth}");

    return Align(
      child: SizedBox(
        width: bodyWidth,
        child: Column(children: [
          HomeBodyBanner(),
          HomeBodyPopular(),
          SizedBox(height: gap_l)
        ]),
      ),
    );
  }
}
