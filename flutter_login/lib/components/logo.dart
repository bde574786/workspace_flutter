import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/logo.svg",
          width: 70,
          height: 70,
        ),
        Text(title ?? "Logo",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
      ],
    );
  }
}
