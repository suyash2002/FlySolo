import 'package:flutter/material.dart';
import 'package:FlySolo/pages/headings.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class Tracker extends StatefulWidget {
  @override
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  final format = DateFormat("YYYY-MM-DD");
  TextEditingController _dateprev = TextEditingController();
  TextEditingController _dateprev2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFFF3a67cc),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    alignment: Alignment.topCenter,
                    child: Head(text: "Tracker")),
                Container(
                  child: Image(
                    image: AssetImage(
                      'assets/images/dtracker.png',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Form(
                    child: Card(
                      color: Colors.blue[100],
                      child: Container(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            Text('Previous cycle date: (${format.pattern})',
                                style: TextStyle(
                                    fontFamily: ("Roboto"),
                                    fontSize: 18,
                                    color: Colors.black)),
                            DateTimeField(
                              format: format,
                              onShowPicker: (context, currentValue) {
                                return showDatePicker(
                                    context: context,
                                    firstDate: DateTime(2021),
                                    initialDate: currentValue ?? DateTime.now(),
                                    lastDate: DateTime(2100));
                              },
                            ),
                            SizedBox(height: 20),
                            Text(
                                'Previous to Previous date (${format.pattern})',
                                style: TextStyle(
                                    fontFamily: ("Roboto"),
                                    fontSize: 18,
                                    color: Colors.black)),
                            DateTimeField(
                              format: format,
                              onShowPicker: (context, currentValue) {
                                return showDatePicker(
                                    context: context,
                                    firstDate: DateTime(2021),
                                    initialDate: currentValue ?? DateTime.now(),
                                    lastDate: DateTime(2100));
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                              ),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text("Submit",
                                    style: TextStyle(
                                        fontFamily: ("Roboto"),
                                        fontSize: 20,
                                        color: Colors.white)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}
