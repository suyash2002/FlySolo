import 'package:flutter/material.dart';
import 'package:FlySolo/pages/headings.dart';

class Essentials extends StatefulWidget {
  @override
  _EssentialsState createState() => _EssentialsState();
}

class _EssentialsState extends State<Essentials> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFFF3a67cc),
          body: Column(
            children: <Widget>[
              Head(text: "Essentials"),
              Image.asset("assets/images/about.png"),
              Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius:
                      BorderRadius.circular(10), //border corner radius
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
                margin: EdgeInsets.fromLTRB(50, 40, 50, 20),
                child: Text(
                  "Diet Plan",
                  style: TextStyle(fontSize: 35, fontFamily: "Poppins"),
                ),
                width: 170,
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100],
                  ),
                  child: Text(
                    " Enrich your diet with the following things which ensures your health to be at its zenith ",
                    style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 20,
                    ),
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[],
                ),
              )
            ],
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
