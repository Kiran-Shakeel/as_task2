import 'package:flutter/material.dart';

class StylingText extends StatelessWidget {
  final int val;
  const StylingText({Key? key, required this.val}) : super(key: key);

  static Color pink = Color(hexColor("#E58D8D"));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25, left: 16),
      child: Text(
        val.toString(),
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),
      ),
    );
  }
}

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll("#", '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
