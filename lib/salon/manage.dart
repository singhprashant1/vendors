import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:vendors/services.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class ManageQueue extends StatefulWidget {
  @override
  _ManageQueueState createState() => _ManageQueueState();
}

class _ManageQueueState extends State<ManageQueue> {
  DateTime _dateTime = DateTime.now();

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
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("User name"),
                  accountEmail: Text("User email"),
                  currentAccountPicture: CircleAvatar(),
                ),
                ListTile(
                  title: Text("Profile Settings"),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => null));
                  },
                ),
                ListTile(
                  title: Text("Manage Queue"),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => null));
                  },
                ),
                ListTile(
                  title: Text("Customer Data"),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => null));
                  },
                ),
                ListTile(
                  title: Text("View Your Ratings"),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => null));
                  },
                ),
                ListTile(
                  title: Text("Notifications"),
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => null));
                  },
                ),
              ],
            )
          ],
        ),
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
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 70),
                        child: Text(
                          "Manage Your Queue",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
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
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Text(
                            "50",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Text(
                          "Select day",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
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
                        calendarStyle: CalendarStyle(
                          todayColor: Colors.purple,
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
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    child: Column(
                      children: [hourMinute12H()],
                    ),
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
                          colorOn: Colors.redAccent[700],
                          colorOff: Colors.orange[800],
                          iconOn: Icons.remove_circle_outline,
                          iconOff: Icons.done,
                          textSize: 16.0,

                          onChanged: (bool state) {
                            //Use it to manage the different states
                            print('Current State of SWITCH IS: $state');
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
      normalTextStyle: TextStyle(fontSize: 12),
      highlightedTextStyle: TextStyle(fontSize: 20),
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
