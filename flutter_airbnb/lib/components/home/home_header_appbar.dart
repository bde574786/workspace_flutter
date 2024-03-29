import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeHeaderAppBar extends StatelessWidget {
  const HomeHeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(gap_m),
      child: Row(
        children: [
          _buildAppBarLogo(),
          const Spacer(),
          _buildAppBarMenu(),
        ],
      ),
    );
  }

  Widget _buildAppBarLogo() {
    return Row(
      children: [
        Image.asset(
          "assets/logo.png",
          width: 30,
          height: 30,
          color: Colors.redAccent,
        ),
        SizedBox(
          width: gap_s,
        ),
        Text(
          "airbnb",
          style: h5(mColor: Colors.white),
        ),
      ],
    );
  }

  Widget _buildAppBarMenu() {
    return Row(
      children: [
        Text(
          "회원가입",
          style: subTitle1(mColor: Colors.white),
        ),
        SizedBox(width: gap_m),
        Text(
          "로그인",
          style: subTitle1(mColor: Colors.white),
        ),
      ],
    );
  }
}
