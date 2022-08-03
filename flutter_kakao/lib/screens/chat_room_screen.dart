import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/chat_icon_button.dart';
import 'package:flutter_kakao/components/my_chat.dart';
import 'package:flutter_kakao/components/time_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import '../components/other_chat.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final List<MyChat> chats = [];
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "홍길동",
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: [
            Icon(
              FontAwesomeIcons.search,
              size: 20,
            ),
            SizedBox(width: 25),
            Icon(FontAwesomeIcons.bars),
            SizedBox(width: 25),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      TimeLine(
                        time: "2022년 8월 3일 수요일",
                      ),
                      OtherChat(
                        name: "홍길동",
                        text: "복 많이 받으세요",
                        time: "오전 10:15",
                      ),
                      MyChat(text: "님도 복 많이 받으세요", time: "오후 12:30"),
                      ...List.generate(chats.length, (index) => chats[index])
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  ChatIconButton(
                    icon: Icon(FontAwesomeIcons.plusSquare),
                  ),
                  Expanded(
                    child: Container(
                      child: TextField(
                        onSubmitted: _handleSubmitted,
                        controller: _textController,
                        maxLines: 1,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  ChatIconButton(
                    icon: Icon(FontAwesomeIcons.smile),
                  ),
                  ChatIconButton(
                    icon: Icon(FontAwesomeIcons.cog),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(String value) {
    _textController.clear();

    setState(() {
      chats.add(
        MyChat(
          text: value,
          time: DateFormat("a K:m")
              .format(new DateTime.now())
              .replaceAll("AM", "오전")
              .replaceAll("PM", "오후"),
        ),
      );
    });
  }
}
