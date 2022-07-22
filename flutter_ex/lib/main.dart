import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Color color = Theme.of(context).primaryColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Flutter"),
        ),
        body: Column(
          children: [
            Image.asset(
              'images/lake.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }
}

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the BlÃ¼emlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                "Oeschinen Lake Campground",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
      ),
      const LikeIcon(),
      const Text("41")
    ],
  ),
);

class LikeIcon extends StatelessWidget {
  const LikeIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.white,
    );
  }
}

class ChangeIcon extends StatefulWidget {
  const ChangeIcon({Key? key}) : super(key: key);

  @override
  State<ChangeIcon> createState() => _changeIconState();
}

class _changeIconState extends State<ChangeIcon> {
  Color starColor = Colors.white;
  int? count;

  void changeColor() {
    setState(() {
      starColor = (starColor == Colors.white) ? Colors.red : Colors.white;
      if (starColor == Colors.white) {
      } else {}
    });
  }

  void initState() {
    starColor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _changeIconState();
      },
      child: Icon(
        Icons.star,
        color: starColor,
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w400, color: color),
        ),
      )
    ],
  );
}

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
    _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
  ],
);
