import 'package:flutter/material.dart';

class ProfileCountInfo extends StatelessWidget {
  const ProfileCountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Spacer(),
        _buildInfo("50", "Posts"),
        Spacer(),
        _buildLine(),
        Spacer(),
        _buildInfo("19", "Likes"),
        Spacer(),
        _buildLine(),
        Spacer(),
        _buildInfo("3", "Share"),
        Spacer(),
      ],
    );
  }
}

Widget _buildInfo(String count, String title) {
  return Column(
    children: [
      Text(count, style: TextStyle(fontSize: 15)),
      SizedBox(height: 2),
      Text(title, style: TextStyle(fontSize: 15))
    ],
  );
}

Widget _buildLine() {
  return Container(
    width: 2,
    height: 60,
    color: Colors.grey[500],
  );
}
