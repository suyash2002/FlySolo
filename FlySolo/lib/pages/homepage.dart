import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:FlySolo/pages/about.dart';
import 'package:FlySolo/pages/essentials.dart';
import 'package:FlySolo/pages/tracker.dart';
import 'package:FlySolo/pages/headings.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3a67cc),
        appBar: AppBar(
            backgroundColor: const Color(0xFFFB6A6CA),
            title: Text(
              "FlySolo",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontFamily: "Poppins",
                letterSpacing: 1,
              ),
            ),
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black)),
        drawer: new Drawer(
            child: Container(
          color: const Color(0xFFFB6A6CA),
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xFFF3a67cc),
                ),
                accountName: Text(
                  "Hello user!",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                accountEmail: Text(
                  "testemail@gmailcom",
                  style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                currentAccountPicture: new CircleAvatar(
                  backgroundImage: new AssetImage("assets/images/avatar.png"),
                ),
              ),
              ListTile(
                  title: Text(
                    "About us",
                    style: TextStyle(fontFamily: "Sofia", fontSize: 25),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new AboutPage()));
                  }),
              new Divider(color: Colors.blue, height: 5.0),
              ListTile(
                  title: Text(
                    "Tracker",
                    style: TextStyle(fontFamily: "Sofia", fontSize: 25),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) => new Tracker()));
                  }),
              new Divider(
                color: Colors.blue,
              ),
              ListTile(
                  title: Text(
                    "Essentials",
                    style: TextStyle(fontFamily: "Sofia", fontSize: 25),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new Essentials()));
                  }),
              new Divider(
                color: Colors.blue,
              ),
              ListTile(
                  title: Text(
                    "Login/Signup",
                    style: TextStyle(fontFamily: "Sofia", fontSize: 25),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new AboutPage()));
                  }),
              new Divider(
                color: Colors.blue,
              ),
            ],
          ),
        )),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Head(text: "Hello there"),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Image(
                  image: AssetImage(
                    'assets/images/hi.png',
                  ),
                ),
              ),
              Head(text: "Features"),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFFB6A6CA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    )),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(50, 50, 0, 25),
                      alignment: Alignment.topLeft,
                      child: Image(
                        height: 100,
                        image: AssetImage('assets/images/Calendar.png'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(40),
                      child: TextButton(
                        onPressed: () {
                          {
                            Navigator.of(context).pop();
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new Tracker()));
                          }
                        },
                        child: Text(
                          "Tracker",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Roboto",
                              color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: const Color(0xFFFB6A6CA),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      height: 90,
                      alignment: Alignment.topLeft,
                      child: Image(
                        image: AssetImage('assets/images/essentials.png'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      child: FlatButton(
                        onPressed: () {
                          {
                            Navigator.of(context).pop('/');
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        new Essentials()));
                          }
                        },
                        child: Text(
                          "Essentials",
                          style: TextStyle(fontSize: 30, fontFamily: "Roboto"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: const Color(0xFFFB6A6CA),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(45, 25, 0, 25),
                      height: 110,
                      alignment: Alignment.topLeft,
                      child: Image(
                        image: AssetImage('assets/images/pencil.png'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(37),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop('/');
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new AboutPage()));
                        },
                        child: Text(
                          "About Us",
                          style: TextStyle(fontSize: 30, fontFamily: "Roboto"),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
