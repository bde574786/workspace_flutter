import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCartDetail extends StatelessWidget {
  const ShoppingCartDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailNameAndPrice(),
            _buildDetailRatingAndReviewCount(),
            _buildDetailColorOptions(),
            _bulidDetailButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        // 1. 자식들을 양 끝으로 정렬하는 속성
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Urban Soft AL 10.0',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '\$699',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRatingAndReviewCount() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          // Icon 위젯과 Text 위젯을 양 끝으로 벌릴 수 있다.
          Spacer(),
          Text("review"),
          Text("(26)", style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }

  Widget _buildDetailColorOptions() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Color Options"),
          SizedBox(height: 10.0),
          Row(
            children: [
              _bulidDetailIcon(Colors.black),
              _bulidDetailIcon(Colors.green),
              _bulidDetailIcon(Colors.orange),
              _bulidDetailIcon(Colors.grey),
              _bulidDetailIcon(Colors.white),
            ],
          )
        ],
      ),
    );
  }

  Widget _bulidDetailIcon(Color mColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
                shape: BoxShape.circle),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: ClipOval(
              child: Container(
                color: mColor,
                width: 40,
                height: 40,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _bulidDetailButton(BuildContext context) {
    return Align(
      child: TextButton(
        onPressed: () {
          showCupertinoDialog(
              context: context,
              builder: (context) => CupertinoAlertDialog(
                    title: Text('장바구니에 담으시겠습니까?'),
                    actions: [
                      CupertinoDialogAction(
                        child: Text('확인'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ));
        },
        child: Text(
          'Add to Cart',
          style: TextStyle(color: Colors.white),
        ),
        style: TextButton.styleFrom(
            backgroundColor: Colors.orange[400],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            minimumSize: Size(300, 50)),
      ),
    );
  }
}
