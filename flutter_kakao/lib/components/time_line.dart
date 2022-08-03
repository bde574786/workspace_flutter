import 'package:flutter/material.dart';

class TimeLine extends StatelessWidget {
  const TimeLine({Key? key, required this.time}) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey[400]),
      child: Text(
        time,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
