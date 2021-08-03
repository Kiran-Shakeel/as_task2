import 'package:flutter/material.dart';

class StylingText extends StatelessWidget {
  final int val;
  const StylingText({Key? key, required this.val}) : super(key: key);

  

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

