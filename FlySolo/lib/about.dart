import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF98C8D2),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFB8E6FF),
                  borderRadius:
                      BorderRadius.circular(10), //border corner radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8), //color of shadow
                      //spread radius
                      blurRadius: 0, // blur radius
                      offset: Offset(10, 10), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
                alignment: Alignment.topCenter,
                width: 250,
                child: Text(
                  " About us ",
                  style: TextStyle(
                      backgroundColor: const Color(0xFFFB8E6FF),
                      fontSize: 40,
                      fontFamily: "Poppins"),
                ),
              ),
              Image(
                image: NetworkImage(
                    "http://mlh-fellow-portfolio.herokuapp.com/static/assets/images/notebook.png"),
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                child: Text(
                  "Enduring society's hostility towards a natural process like mentruation is one heck of a challenge.To make life a bit easier,FlySolo brings alog a safe space where you can connect with incredible women and share your inspiring story.So wear your super-woman cape and let us be your side-kick.Let us together destigmatise MENSTRUATION.",
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFFB8E6FF),
                  borderRadius:
                      BorderRadius.circular(10), //border corner radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8), //color of shadow
                      //spread radius
                      blurRadius: 0, // blur radius
                      offset: Offset(10, 10), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                margin: EdgeInsets.fromLTRB(0, 50, 0, 10),
                alignment: Alignment.topCenter,
                width: 250,
                child: Text(
                  " Contact us ",
                  style: TextStyle(
                      backgroundColor: const Color(0xFFFB8E6FF),
                      fontSize: 40,
                      fontFamily: "Poppins"),
                ),
              ),
              Image(
                image: NetworkImage(
                    "https://blush.design/api/download?shareUri=bGA7r1bR7m0gLz69&c=Skin_0%7Eb75858-0.9%7Eb75858&w=800&h=800&fm=png"),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
