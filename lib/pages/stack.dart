import 'package:as_task2/widgets/constants.dart';
import 'package:as_task2/widgets/style.dart';
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fullwidth = MediaQuery.of(context).size.width;
    final fullheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              onSelected: choices,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem(
                    child: Text(choice),
                    value: choice,
                  );
                }).toList();
              })
        ],
      ),
      body: ListView(children: [
        Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Card(
                margin: EdgeInsets.zero,
                elevation: 3.0,
                color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: Container(
                  child: StylingText(val: 0),
                  width: fullwidth,
                  height: fullheight,
                ),
              ),
            ),
            SetCard(
              topValue: 150,
              setcolor: Colors.pink,
              val: 1,
            ),
            SetCard(
              topValue: 300,
              setcolor: Colors.teal,
              val: 2,
            ),
            SetCard(
              topValue: 450,
              setcolor: Colors.purple,
              val: 3,
            ),
            SetCard(
              topValue: 600,
              setcolor: Colors.pink,
              val: 4,
            ),
            SetCard(
              topValue: 750,
              setcolor: Colors.deepPurple,
              val: 5,
            ),
          ],
        ),
      ]),
    );
  }
}

class SetCard extends StatelessWidget {
  final int topValue, val;
  final Color setcolor;
  const SetCard(
      {Key? key,
      required this.topValue,
      required this.setcolor,
      required this.val})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: topValue.toDouble(),
        left: 0.0,
        right: 0.0,
        child: Card(
          margin: EdgeInsets.zero,
          color: setcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          child: Container(
            child: StylingText(
              val: val,
            ),
            width: double.infinity,
            height: 300.0,
          ),
        ));
  }
}

void choices(String choice) {
  
}
