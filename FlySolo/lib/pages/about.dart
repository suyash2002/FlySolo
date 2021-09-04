import 'package:flutter/material.dart';
import 'package:FlySolo/pages/headings.dart';
import 'homepage.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF3a67cc),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    alignment: Alignment.topLeft,
                    child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) => Home()));
                        },
                        child: Icon(
                          Icons.home,
                          size: 50,
                          color: Colors.blue[100],
                        )),
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      child: Head(text: "AboutUs")),
                ],
              ),
              Image(
                image: AssetImage("assets/images/about.png"),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius:
                      BorderRadius.circular(10), //border corner radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6), //color of shadow
                      //spread radius
                      blurRadius: 0, // blur radius
                      offset: Offset(10, 10), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                child: Text(
                  "Enduring society's hostility towards a natural process like mentruation is one heck of a challenge.To make life a bit easier,FlySolo brings alog a safe space where you can connect with incredible women and share your inspiring story.So wear your super-woman cape and let us be your side-kick.Our aim is to help you in every bit possible,be it the monthly menstrual reminder,or the diet plan,We have got your back. Let us together destigmatise MENSTRUATION.",
                  style: TextStyle(
                      fontSize: 20, letterSpacing: 2, fontFamily: ("Roboto")),
                ),
              ),
              Head(
                text: "Contact us",
              ),
              Image(
                image: AssetImage("assets/images/contact.png"),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius:
                      BorderRadius.circular(10), //border corner radius
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6), //color of shadow
                      //spread radius
                      blurRadius: 0, // blur radius
                      offset: Offset(10, 10), // changes position of shadow
                      //first paramerter of offset is left-right
                      //second parameter is top to down
                    ),
                    //you can set more BoxShadow() here
                  ],
                ),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                child: Text(
                  "Have Some suggestions?Or want to be a part of this initiative.Dont hesitate to ping us up on this mail.We will be fortunate to solve all your queries and get something constructive out of the suggestions.",
                  style: TextStyle(
                      fontSize: 20, letterSpacing: 2, fontFamily: ("Roboto")),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    // color: Colors.white,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.blue[100],
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.mail_outline_rounded),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                      child: Text("flysolo@gmail.com",
                          style:
                              TextStyle(fontFamily: ("Roboto"), fontSize: 20)))
                ],
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
