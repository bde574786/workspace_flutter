import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/home/home_body_popular_item.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeBodyPopular extends StatelessWidget {
  const HomeBodyPopular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPopularTitle(),
          _buildPopularList(),
        ],
      ),
    );
  }

  Widget _buildPopularTitle() {
    return Column(
      children: [
        Text(
          "한국 숙소에 직접 다녀간 게스트의 후기",
          style: h5(),
        ),
        Text(
          "게스트 후기 2,500,000개 이상, 평균 평점 4.7(5점 만점)",
          style: body1(),
        ),
        SizedBox(
          height: gap_m,
        )
      ],
    );
  }

  Widget _buildPopularList() {
    // 윈도우 크기에 따라서 자식들이 떨어짐
    // 1. 전체 화면 사이즈를 1000이라고 가정하고 이해를 해 보자.
    // 2. _buildPopularList의 넓이가 화면에 70%이니까 700이다.
    // 3. HomeBodyPopularItem 각각의 넓이는 700의 1/3인 233.33 -5.
    // 따라서 총 크기는 228.33이다.
    // 4. 228.33의 인기 아이템이 3개가 배치되면, 684.99크기이고, 남은 크기는 15.01이 남는다.
    // 5. 그래서 HomeBodyPopularItem 위젯 사이에 SizedBox를 width 7.5, 7.5 줄 수 있다.
    return Wrap(
      children: [
        HomeBodyPopularItem(id: 0),
        SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 1),
        SizedBox(width: 7.5),
        HomeBodyPopularItem(id: 2),
      ],
    );
  }
}
