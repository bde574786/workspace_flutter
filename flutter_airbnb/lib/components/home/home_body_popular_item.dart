import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeBodyPopularItem extends StatelessWidget {
  HomeBodyPopularItem({Key? key, required this.id}) : super(key: key);

  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    // 인기 아이템은 전체 화면의 70% 1/3만큼 사이즈를 가질수 있도록 하고
    // 사이즈 -5 만큼의 크기를 가지게 설계한다.

    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Container(
      // 화면이 줄어들 때 너무 작게 줄어드는것을 방지하기 위해 최소 제약 조건을 걸어준다.
      constraints: BoxConstraints(
        minWidth: 420,
      ),
      child: SizedBox(
        width: popularItemWidth,
        child: Column(
          children: [
            _buildPopularItemImage(),
            _buildPopularItemStar(),
            _buildPopularItemComment(),
            _buildPopularItemUserInfo()
          ],
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/${popularList[id]}",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: gap_s,
        ),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: Colors.redAccent),
            Icon(Icons.star, color: Colors.redAccent),
            Icon(Icons.star, color: Colors.redAccent),
            Icon(Icons.star, color: Colors.redAccent),
            Icon(Icons.star, color: Colors.redAccent),
          ],
        ),
        SizedBox(height: gap_s)
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          "깔끔하고 다 갖춰져있어서 좋아요, 위치도 완전 좋아용 다들 여기 싶다고 ㅋㅋㅋㅋㅋ 화장실도 3개에요 !!! 5명이서 씻는것도 전혀 불편함 없이 좋았어요^^ 이불도 포근하고 좋습니다. ㅎㅎㅎㅎ 텍스트 오버플로우 위젯에 엘립시스",
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: gap_s,
        )
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/p1.jpeg"),
        ),
        SizedBox(
          width: gap_s,
        ),
        Column(
          children: [
            Text(
              "데어",
              style: subTitle1(),
            ),
            Text("한국")
          ],
        ),
      ],
    );
  }
}
