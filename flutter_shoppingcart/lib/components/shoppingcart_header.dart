import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';

class ShoppingCartheader extends StatefulWidget {
  const ShoppingCartheader({Key? key}) : super(key: key);

  @override
  State<ShoppingCartheader> createState() => _ShoppingCartheaderState();
}

class _ShoppingCartheaderState extends State<ShoppingCartheader> {
  int selectedId = 0;

  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderPic(),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildHeaderSelectorButton(0, Icons.directions_bike),
              _buildHeaderSelectorButton(1, Icons.motorcycle),
              _buildHeaderSelectorButton(2, Icons.emoji_transportation),
              _buildHeaderSelectorButton(3, Icons.airplanemode_active),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 5 / 3,
        child: Image.asset(
          selectedPic[selectedId],
          fit: BoxFit.cover,
        ),
      ),
    );
  } // end of _buildHeaderPic

  Widget _buildHeaderSelectorButton(int id, IconData mIcon) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: id == selectedId ? kAccentColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
          onPressed: (() {
            setState(() {
              selectedId = id;
            });
          }),
          icon: Icon(mIcon, color: Colors.black)),
    );
  }
}
