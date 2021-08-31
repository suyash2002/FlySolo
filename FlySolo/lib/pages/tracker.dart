import 'package:flutter/material.dart';
import 'package:FlySolo/pages/headings.dart';

class Tracker extends StatefulWidget {
  @override
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFFF3a67cc),
          body: Column(
            children: <Widget>[
              Container(
                  alignment: Alignment.topCenter, child: Head(text: "Tracker")),
              Container(
                child: Image(
                  image: AssetImage(
                    'assets/images/dtracker.png',
                  ),
                ),
              ),
            ],
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
