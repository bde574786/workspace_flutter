import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/style.dart';

class HomeHeaderForm extends StatelessWidget {
  const HomeHeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    print("screenWidth : ${screenWidth}");

    return Padding(
      padding: const EdgeInsets.only(top: gap_m),
      child: Align(
        // -1.0부터 1.0까지 가로 범위에서 0.1은 5%이다.
        // 520 작으면 정중앙 (0.0) : (-0.6, -0)
        alignment:
            screenWidth < 520 ? Alignment(0.0, 0.0) : Alignment(-0.6, 0.0),
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l),
              child: Column(
                children: [
                  _buildFormTitle(),
                  _buildFormField(),
                  _buildFormSubmit(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text("에어비앤비에서 숙소를 검색하세요"),
        SizedBox(
          height: gap_xs,
        ),
        Text(
            "혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 공간 전체 숙소까지, 에어비앤비 숙소에 다 있습니다."),
        SizedBox(
          height: gap_xs,
        ),
      ],
    );
  }

  Widget _buildFormField() {
    return Column(
      children: [
        CommonFormField(prefixText: "위치", hintText: "근처 추천 장소"),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
                child: CommonFormField(prefixText: "체크인", hintText: "날짜 입력")),
            SizedBox(width: gap_xs),
            Expanded(
                child: CommonFormField(prefixText: "체크아웃", hintText: "날짜 입력")),
            SizedBox(height: gap_s),
          ],
        ),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
              child: CommonFormField(
                prefixText: "성인",
                hintText: "2",
              ),
            ),
            SizedBox(width: gap_xs),
            Expanded(
              child: CommonFormField(
                prefixText: "어린이",
                hintText: "0",
              ),
            ),
          ],
        ),
        SizedBox(
          height: gap_m,
        )
      ],
    );
  }

  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.redAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          "검색",
          style: subTitle1(mColor: Colors.white),
        ),
        onPressed: () {
          print("서브밋 클릭 됨.");
        },
      ),
    );
  }
}
