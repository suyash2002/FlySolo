import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'about.dart';

void main() => runApp(app());

class app extends StatelessWidget {
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
        backgroundColor: const Color(0xFFFEEFEFE),
        appBar: AppBar(
            backgroundColor: const Color(0xFFFB8E6FF),
            title: Text(
              "FlySolo",
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                letterSpacing: 1,
                fontWeight: FontWeight.w400,
                fontFamily: 'Sofia',
              ),
            ),
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black)),
        drawer: new Drawer(
            child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Hello user!"),
              accountEmail: Text("testemail@gmailcom"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage(
                    "https://blush.design/api/download?shareUri=iUR0gDozwBGtmV97&c=Clothes_0%7Effbcbf-0.1%7Effbcbf_Hair_0%7Effe5b5-0.1%7E50271b_Skin_0%7Ee88f70-0.1%7Ec47357&w=800&h=800&fm=png"),
              ),
            ),
            ListTile(
                title: Text("About us"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new AboutPage()));
                }),
            new Divider(color: Colors.blue, height: 5.0),
            ListTile(
                title: Text("Tracker"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new AboutPage()));
                }),
            new Divider(
              color: Colors.blue,
            ),
            ListTile(
                title: Text("Essentials"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new AboutPage()));
                }),
            new Divider(
              color: Colors.blue,
            ),
            ListTile(
                title: Text("Login/Signup"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new AboutPage()));
                }),
            new Divider(
              color: Colors.blue,
            ),
          ],
        )),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 15),
                alignment: Alignment.topCenter,
                child: Text(
                  "Hello there!",
                  style: TextStyle(fontSize: 35, fontFamily: "Poppins"),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Image(
                  image: NetworkImage(
                    "https://imagetourlconverter.com/files/Sza4NVxuVF135089.png",
                  ),
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
                  alignment: Alignment.center,
                  width: 250,
                  height: 60,
                  child: Text(
                    "Features",
                    style: TextStyle(fontSize: 35, fontFamily: 'Poppins'),
                  )),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 50, 0, 25),
                    alignment: Alignment.topLeft,
                    child: Image(
                      height: 125,
                      image: NetworkImage(
                          "https://imagetourlconverter.com/files/GXkRCHLeWI918596.png"),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(63, 0, 0, 0),
                      child: Text(
                        "Tracker",
                        style: TextStyle(fontSize: 30),
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    height: 125,
                    alignment: Alignment.topLeft,
                    child: Image(
                      image: NetworkImage(
                          "https://imagetourlconverter.com/files/wkcHPMxmUC314330.png"),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Text(
                        "Essentials",
                        style: TextStyle(fontSize: 30),
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 25, 0, 25),
                    height: 120,
                    alignment: Alignment.topLeft,
                    child: Image(
                      image: NetworkImage(
                          "https://imagetourlconverter.com/files/KpyVlNVzBX751246.png"),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      width: 200,
                      alignment: Alignment.topLeft,
                      child: Text(
                        "About Us",
                        style: TextStyle(fontSize: 30),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
