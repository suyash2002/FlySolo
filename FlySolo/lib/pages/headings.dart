import 'package:flutter/material.dart';

class Head extends StatelessWidget {
  final String text;
  const Head({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFB6A6CA),
        borderRadius: BorderRadius.circular(10), //border corner radius
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5), //color of shadow
            //spread radius
            blurRadius: 0, // blur radius
            offset: Offset(10, 10), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
          //you can set more BoxShadow() here
        ],
      ),
      margin: EdgeInsets.fromLTRB(0, 40, 0, 15),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      alignment: Alignment.topCenter,
      child: Text(
        "$text",
        style: TextStyle(fontSize: 25, fontFamily: "Poppins"),
      ),
      width: 200,
    );
  }
}
