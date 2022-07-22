import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("Welcome to Flutter"),
      ),
      body: SafeArea(
          child: Padding(
        padding:
            const EdgeInsets.only(bottom: 25, top: 25, left: 40, right: 40),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Column(
            children: [
              Image.asset("assets/camping.png"),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Oeschinen Lake CampGround',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Kanderseg, Switzerland',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            CupertinoIcons.star_fill,
                            color: Colors.red,
                          ),
                          SizedBox(width: 5),
                          Text('41')
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(children: [
                    Icon(
                      CupertinoIcons.phone_fill,
                      color: Colors.lightBlue[400],
                    ),
                    SizedBox(height: 5),
                    Text(
                      'CALL',
                      style: TextStyle(color: Colors.lightBlue[400]),
                    )
                  ]),
                  Column(children: [
                    Icon(
                      CupertinoIcons.location_fill,
                      color: Colors.lightBlue[400],
                    ),
                    SizedBox(height: 5),
                    Text(
                      'ROUTE',
                      style: TextStyle(color: Colors.lightBlue[400]),
                    )
                  ]),
                  Column(children: [
                    Icon(
                      CupertinoIcons.ant_circle,
                      color: Colors.lightBlue[400],
                    ),
                    SizedBox(height: 5),
                    Text(
                      'SHARE',
                      style: TextStyle(color: Colors.lightBlue[400]),
                    )
                  ])
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"),
              )
            ],
          ),
        ),
      )),
    );
  }
}
