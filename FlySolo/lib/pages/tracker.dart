import 'package:flutter/material.dart';
import 'package:FlySolo/pages/headings.dart';
import 'package:intl/intl.dart';
import 'homepage.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Tracker extends StatefulWidget {
  @override
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  final format = DateFormat("yyyy-MM-dd");
  final dateController = TextEditingController();
  final dateController1 = TextEditingController();
  var next_date = "";

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    dateController1.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFFF3a67cc),
          body: SingleChildScrollView(
              child: Column(children: <Widget>[
            Container(
                alignment: Alignment.topCenter, child: Head(text: "Tracker")),
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
                        // Text('Previous cycle date: (${format.pattern})',
                        // style: TextStyle(
                        //     fontFamily: ("Roboto"),
                        //     fontSize: 18,
                        //     color: Colors.black)),
                        // DateTimeField(
                        //   format: format,
                        //   controller: dateController1,
                        //   onShowPicker: (context, currentValue) {
                        //     return showDatePicker(
                        //         context: context,
                        //         firstDate: DateTime(2021),
                        //         initialDate: currentValue ?? DateTime.now(),
                        //         lastDate: DateTime(2100));
                        //   },
                        // ),
                        TextField(
                          readOnly: true,
                          controller: dateController,
                          decoration:
                              InputDecoration(labelText: 'Previous cycle date'),
                          onTap: () async {
                            var date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));
                            dateController.text =
                                date.toString().substring(0, 10);
                          },
                        ),
                        SizedBox(height: 20),
                        TextField(
                          readOnly: true,
                          controller: dateController1,
                          decoration: InputDecoration(
                              labelText: 'Previous to previous cycle date'),
                          onTap: () async {
                            var date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100));
                            dateController1.text =
                                date.toString().substring(0, 10);
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
                            onPressed: () {
                              setState(() {
                                var now = DateTime.parse(dateController.text);
                                next_date = now
                                    .add(const Duration(days: 28))
                                    .toString()
                                    .substring(0, 10);
                                print(next_date);
                              });
                            },
                            child: Text("Submit",
                                style: TextStyle(
                                    fontFamily: ("Roboto"),
                                    fontSize: 20,
                                    color: Colors.white)),
                          ),
                        ),
                        Text("The next menstrual cycle begins on:${next_date}",
                            style: TextStyle(
                                fontFamily: ("Roboto"),
                                fontSize: 20,
                                color: Colors.black))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]))),
      debugShowCheckedModeBanner: false,
    );
  }
}
          //       Head(
          //         text: "Your calendar",
          //       ),
          //       Container(
          //         margin: EdgeInsets.all(16.0),
          //         child: SfCalendar(
          //           backgroundColor: Colors.blue[100],
          //           view: CalendarView.month,
          //           firstDayOfWeek: 7,
          //           dataSource: MeetingDatasource(getAppointment()),
          //         ),
          //       ),
          //     ],
          //   ),
          // )),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// List<Appointment> getAppointment() {
//   List<Appointment> meetings = <Appointment>[];
//   final DateTime today = DateTime.now();
//   final DateTime startTime =
//       DateTime(today.year, today.month, today.day, 9, 0, 0);
//   final DateTime endTime = startTime.add(const Duration(hours: 2));
//   meetings.add(Appointment(
//       startTime: startTime,
//       endTime: endTime,
//       subject: "Menstrual Cycle Week",
//       color: Colors.red,
//       recurrenceRule: 'FREQ=DAILY;COUNT=6'));
//   isAlllDay:
//   true;
//   return meetings;
// }

// class MeetingDatasource extends CalendarDataSource {
//   MeetingDatasource(List<Appointment> source) {
//     appointments = source;
//   }
// }
