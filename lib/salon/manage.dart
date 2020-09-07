import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vendors/salon/token.dart';
import 'package:vendors/services.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class ManageQueue extends StatefulWidget {
  @override
  _ManageQueueState createState() => _ManageQueueState();
}

class _ManageQueueState extends State<ManageQueue> {
  DateTime _dateTime = DateTime.now();
  String _token;

  CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        iconTheme: new IconThemeData(color: Colors.black),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Services())),
          color: Colors.black,
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Appbar()));
                },
                child: Icon(
                  Icons.menu,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: Form(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ClipOval(
                    child: Container(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      height: 100,
                      width: 100,
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black),
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          size: 50,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "username",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 85),
                        child: Text(
                          "Manage Your Queue",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 23.5,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Total tokens :",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.5,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(),
                              keyboardType: TextInputType.number,
                              onSaved: (String val) {
                                _token = val;
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 210),
                        child: Text(
                          "Select day",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      TableCalendar(
                        initialCalendarFormat: CalendarFormat.week,
                        daysOfWeekStyle: DaysOfWeekStyle(
                          weekendStyle:
                              TextStyle().copyWith(color: Colors.black),
                        ),
                        calendarStyle: CalendarStyle(
                          todayColor: Colors.purple,
                          weekendStyle: TextStyle(color: Colors.black),
                          selectedColor: Colors.orange[800],
                        ),
                        calendarController: _controller,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text(
                          "Select time",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Column(
                      children: [hourMinute12H()],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                        width: 120,
                        child: LiteRollingSwitch(
                          //initial value
                          value: true,
                          textOn: 'Offline',
                          textOff: 'Go LIVE',
                          colorOn: Colors.black,
                          colorOff: Colors.orange[800],
                          iconOn: Icons.remove_circle_outline,
                          iconOff: Icons.done,
                          textSize: 14.5,
                          onChanged: (bool state) {
                            //Use it to manage the different states
                            print('Current State of SWITCH IS: $state');
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Token()));
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget hourMinute12H() {
    return new TimePickerSpinner(
      is24HourMode: false,
      normalTextStyle: TextStyle(fontSize: 10.5),
      highlightedTextStyle: TextStyle(fontSize: 18.5),
      itemHeight: 28,
      itemWidth: 60,
      onTimeChange: (time) {
        setState(() {
          _dateTime = time;
        });
      },
    );
  }
}

class Appbar extends StatefulWidget {
  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        iconTheme: new IconThemeData(color: Colors.black),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ManageQueue())),
          color: Colors.black,
        ),
      ),
      body: Form(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Token()));
                      },
                      child: Text(
                        "Profile Settings",
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Manage Queue",
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Customer Data",
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "View Your Ratings",
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Notifications",
                        style: TextStyle(fontSize: 23),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ManageQueue()));
        },
        child: Icon(
          Icons.clear,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
